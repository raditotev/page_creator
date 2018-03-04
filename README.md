# PageCreator

This gem removes the need of creating an extra module or class with methods initialising or reusing site prism page instances. For example if you have `class HomePage < SitePrism::Page` with `element :login_link, '#login'`, you can call this page and it's methods from your step definitions by using `home_page.login_link.click` without the need to add any extra code to your test framework.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'page_creator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install page_creator

## Usage

This gem is to be used with [cucumber](https://github.com/cucumber/cucumber-ruby) and [site_prism](https://github.com/natritmeyer/site_prism) gems. After `bundle install` require gem:
```ruby
# project_folder/features/support/env.rb

require 'page_creator'
````

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/raditotev/page_creator.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
