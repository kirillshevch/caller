# Caller

Gem which helps initialize class instance with `.call` method.

```
.call(*args) => #new(*args).call
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'caller'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install caller

## Usage

Do you have some code like this?

```ruby
module Service
  def call(*args)
    new(*args).call
  end
end

class Printer
  extend Service

  def initialize(text)
    @text = text
  end

  def call
    @text
  end
end
```


Let's replace it with `caller`

```ruby
class Printer
  extend Caller

  def call(text)
    text
  end
end

Printer.call('Say caller')
```

## caller_for

Assign other alias for the constructor with `caller_for` method

```ruby
class Printer
  extend Caller

  caller_for :print

  def print(text)
    text
  end
end

Printer.print('Say caller')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kirillshevch/caller.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
