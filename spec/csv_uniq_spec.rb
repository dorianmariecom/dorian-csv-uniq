# frozen_string_literal: true

require "spec_helper"
require "tempfile"

RSpec.describe "csv-pluck" do
  it "works" do
    csv = Tempfile.create
    File.write(csv, <<~CSV)
      a,1
      b,2
      a,1
      a,2
    CSV
    expect(`bin/csv-uniq #{csv.path}`).to eq(<<~CSV)
      a,1
      b,2
      a,2
    CSV
  end

  it "works with headers" do
    csv = Tempfile.create
    File.write(csv, <<~CSV)
      key,value
      a,1
      b,2
      a,1
      a,2
    CSV
    expect(`bin/csv-uniq --headers -p key #{csv.path}`).to eq(<<~CSV)
      key,value
      a,1
      b,2
    CSV
  end
end
