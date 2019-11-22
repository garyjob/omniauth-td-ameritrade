require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Amtd < OmniAuth::Strategies::OAuth2

      option :name, 'amtd'

      option :client_options, {
        :site => "https://api.tdameritrade.com",
        :authorize_url => "https://auth.tdameritrade.com/auth",
        :token_url => "https://api.tdameritrade.com/v1/oauth2/token"
      }

      uid { raw_info[0]["securitiesAccount"]["accountId"] }

      info do
        {
          :email => "#{raw_info[0]["securitiesAccount"]["accountId"]}@tdameritrade.com", # Fake email to allow saving
          :cash_balance => raw_info[0]["securitiesAccount"]["currentBalances"]["cashBalance"],
          :long_market_value => raw_info[0]["securitiesAccount"]["currentBalances"]["longMarketValue"]
        }
      end

      def client
        combined_client_id = "#{options.client_id}@AMER.OAUTHAP"
        ::OAuth2::Client.new(combined_client_id, options.client_secret, deep_symbolize(options.client_options))
      end

      def raw_info
        @raw_info ||= access_token.get("/v1/accounts").parsed
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end