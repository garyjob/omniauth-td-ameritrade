# Omniauth::Td::Ameritrade

Omni-auth strategy to authenticate with TD Ameritrade's developer API

Get your API key at: [https://developer.tdameritrade.com](https://developer.tdameritrade.com)

Note that TD Ameritrade only provides Client ID. Not Client Secret is provided

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-td-ameritrade'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-td-ameritrade

## Usage

Here's an example for adding the middleware to a Rails app in config/initializers/omniauth.rb:

```
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :amtd, ENV['AMERITRADE_CLIENT_ID'], nil
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/omniauth-td-ameritrade/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
