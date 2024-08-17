# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-csv-uniq"
  s.version = "0.0.1"
  s.summary = "Evaluates some code on csv-uniq line of the input"
  s.description =
    "#{s.summary}\n\ne.g. `ls -l | csv-uniq \"puts it.split.first\"`"
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/csv-uniq"]
  s.executables << "csv-uniq"
  s.homepage = "https://github.com/dorianmariecom/dorian-csv-uniq"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
end
