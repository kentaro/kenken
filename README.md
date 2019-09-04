# Kenken

`Kenkenize` string-like object.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kenken'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kenken

## Usage

Using `Kenken` instance:

```ruby
ken = Kenken.new("ken")
puts ken ^ 2 #=> "kenken"
```

Using `String` instance:

```ruby
ken = "ken"
puts ken ^ 2 #=> "kenken"
```

`^` method produces a string not from the argument but from the name of the variable to which the object is bound. Therefore, the code might confuse you:

```ruby
ken = Kenken.new("hayapi")
puts ken ^ 2 #=> "kenken"
```
Also as well:

```ruby
ken = "hayapi"
puts ken ^ 2 #=> "kenken"
```

It's just `Kenkenization.`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kentaro/kenken. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Kenken project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/kentaro/kenken/blob/master/CODE_OF_CONDUCT.md).
