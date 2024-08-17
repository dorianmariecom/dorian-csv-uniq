# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-csv-uniq"
  s.version = "0.1.0"
  s.summary = "returns a csv by unique keys, can be index or name"
  s.description =
    "#{s.summary}\n\ne.g. `cat users.csv | csv-uniq --headers id`"
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/csv-uniq"]
  s.executables << "csv-uniq"
  s.homepage = "https://github.com/dorianmariecom/dorian-csv-uniq"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
  s.add_dependency "csv"
end
