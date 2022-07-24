# frozen_string_literal: true

require 'yaml'

class I18nCountries
  attr_reader :countries

  def initialize()
    @countries ||= {}
    yaml_files.each_pair do |locale, file_path|
      @countries[locale] = Psych.load_file(file_path)
    end
  end

  def locales
    @countries.keys()
  end

  private
    def yaml_files()
      dirs = Dir.entries(File.join(my_dir, 'data')) - %w(. ..)
      dirs.to_h { |dir| [dir, File.join(my_dir, 'data', dir, 'country.yaml')] }
    end

    def my_dir()
      __dir__
    end
end

require_relative "i18n_countries/version"
