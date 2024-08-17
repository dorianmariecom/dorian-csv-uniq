# frozen_string_literal: true

require "spec_helper"
require "tempfile"

RSpec.describe "csv-uniq" do
  it "works" do
    file = Tempfile.create
    File.write(file, "id,name\n1,Dorian\n1,Damien\n2,Damien")
    expected = "id,name\n1,Dorian\n2,Damien\n"
    expect(`cat #{file.path} | bin/csv-uniq id --headers`).to eq(expected)
  end
end
