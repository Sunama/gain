# Gain

Simple printed progress style for ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gain'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gain

## Usage

```ruby
gain = Gain.new :title => "Start 10,000 Progress", :total => 10000, :progress_print => 1.0

# :title is optional
# :progress_print is option for percentage of progress interval print to console, by default this value is 1.0 (every progress gain 1% Gain will print it to console)

for i in 1..10000 do
	gain.progress
end
```

## Demo

```ruby
> Start 10,000 Progress
> 1%
> 2%
> 3%
...
...
...
> 100%
> Complete processed
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/gain/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
