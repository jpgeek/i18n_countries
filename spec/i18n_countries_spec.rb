# frozen_string_literal: true

RSpec.describe I18nCountries do
  it "has a version number" do
    expect(I18nCountries::VERSION).not_to be nil
  end

  let(:i18n_countries) { I18nCountries.new }
  let(:locales) { i18n_countries.locales }
  let(:countries) { i18n_countries.countries[i18n_countries.locales.first] }

  it "loads 628 locales" do
    expect(locales.count).to eq(628)
  end

  it "loads 249 countries" do
    expect(countries.keys.count).to eq(249)
  end

  it "returns correct country names for given locale" do
    expect(i18n_countries.countries['en_US']['JP']).to eq('Japan')
    expect(i18n_countries.countries['ja_JP']['JP']).to eq('日本')
  end

  it "loads numeric and alpha 3 codes" do
    expect(i18n_countries.codes['JP']['a3']).to eq('JPN')
    expect(i18n_countries.codes['JP']['numeric']).to eq(392)
  end
end
