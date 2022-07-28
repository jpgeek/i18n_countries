# frozen_string_literal: true

require 'yaml'
require 'csv'

class I18nCountries
  attr_reader :countries, :codes

  def initialize()
    @countries ||= {}
    @codes ||= {}
    localized_country_files.each_pair do |locale, file_path|
      @countries[locale] = Psych.load_file(file_path)
    end
    CSV.foreach(codes_file) do |row|
      @codes[row[0]] = { 'a3' => row[1], 'numeric' => row[2].to_i }
    end
  end

  def locales
    @countries.keys()
  end

  private
    def localized_country_files()
      dirs = Dir.entries(File.join(my_dir, 'data')) - %w(. ..)
      dirs = dirs.select { |dir| File.directory?(File.join(my_dir, 'data', dir)) }
      dirs.to_h { |dir| [dir, File.join(my_dir, 'data', dir, 'country.yaml')] }
    end

    def codes_file()
      file = File.join(my_dir, 'data', 'codes.csv')
    end

    def my_dir()
      __dir__
    end
end

require_relative "i18n_countries/version"
