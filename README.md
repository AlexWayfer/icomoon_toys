# IcoMoon Toys

[![Cirrus CI - Base Branch Build Status](https://img.shields.io/cirrus/github/AlexWayfer/icomoon_toys?style=flat-square)](https://cirrus-ci.com/github/AlexWayfer/icomoon_toys)
[![Codecov branch](https://img.shields.io/codecov/c/github/AlexWayfer/icomoon_toys/master.svg?style=flat-square)](https://codecov.io/gh/AlexWayfer/icomoon_toys)
[![Code Climate](https://img.shields.io/codeclimate/maintainability/AlexWayfer/icomoon_toys.svg?style=flat-square)](https://codeclimate.com/github/AlexWayfer/icomoon_toys)
[![Depfu](https://img.shields.io/depfu/AlexWayfer/icomoon_toys?style=flat-square)](https://depfu.com/repos/github/AlexWayfer/icomoon_toys)
[![Inline docs](https://inch-ci.org/github/AlexWayfer/icomoon_toys.svg?branch=master)](https://inch-ci.org/github/AlexWayfer/icomoon_toys)
[![License](https://img.shields.io/github/license/AlexWayfer/icomoon_toys.svg?style=flat-square)](https://github.com/AlexWayfer/icomoon_toys/blob/master/LICENSE.txt)
[![Gem](https://img.shields.io/gem/v/icomoon_toys.svg?style=flat-square)](https://rubygems.org/gems/icomoon_toys)

Toys for extracting [IcoMoon](https://icomoon.io/) archives.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'icomoon_toys'
```

And then execute:

```shell
bundle install
```

Or install it yourself as:

```shell
gem install icomoon_toys
```

## Usage

```ruby
require 'icomoon_toys'
expand IcoMoonToys::Template,
  extract_map: {
    'selection.json' => 'assets/icomoon/selection.json',
    'svgxuse.min.js' => 'assets/scripts/lib/svgxuse.min.js',
    'style.css' => 'assets/styles/lib/icomoon.css',
    'symbol-defs.svg' => 'assets/images/icons/symbol-defs.svg'
  }
```

## Development

After checking out the repo, run `bundle install` to install dependencies.

Then, run `toys rspec` to run the tests.

To install this gem onto your local machine, run `toys gem install`.

To release a new version, run `toys gem release %version%`.
See how it works [here](https://github.com/AlexWayfer/gem_toys#release).

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/AlexWayfer/icomoon_toys).

## License

The gem is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).
