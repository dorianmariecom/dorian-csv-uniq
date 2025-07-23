# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-csv-uniq"
  s.version = File.read("VERSION").strip
  s.summary = "returns a csv by unique keys, can be index or name"
  s.description = s.summary
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/csv-uniq"]
  s.executables << "csv-uniq"
  s.homepage = "https://github.com/dorianmariecom/dorian-csv-uniq"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
  s.add_dependency "csv"
  s.add_dependency "dorian-arguments"
  s.required_ruby_version = ">= 3.0"
end
