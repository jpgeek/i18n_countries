# I18nCountries

This gem provides a multilingual list of countries.  I expect it to be used in development environments to populate a database or other data structures.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add i18n_countries

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install i18n_countries

## Usage
Country lookup is done with ISO Alpha-2 code:

    $ require 'i18n_countries'
    $ i18nc = I18nCountries.new

The returned object has two hashes.  'countries' contains a hash of hashes keyed
on locale and Alpha-2 code:

    $ i18nc.countries['en_US']['JP']) # -> 'Japan'

Alpha 3 and numeric codes are available in the 'codes' hash:

    $ i18nc.codes['JP']['a3'] # -> 'JPN'
    $ i18nc.codes['JP']['numeric'] # -> 392

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/i18n_countries. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/i18n_countries/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the I18nCountries project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/i18n_countries/blob/master/CODE_OF_CONDUCT.md).
