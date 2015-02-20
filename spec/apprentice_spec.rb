require 'apprentice'

describe Apprentice do
  let(:valid_params) { {first_name: "Sylwia", last_name: "Olak", email: "solak@8thlight.com", end_date: "2015-3-2"} }
  let(:apprentice) { Apprentice.new(valid_params) }

  it "returns an apprentice with a first name" do
    expect(apprentice.first_name).to eq("Sylwia")
  end

  it "returns an apprentice with a first name" do
    expect(apprentice.last_name).to eq("Olak")
  end

  it "returns an apprentice with an email" do
    expect(apprentice.email).to eq("solak@8thlight.com")
  end

  it "returns an apprentice with an end date converted into a ruby Date object" do
    expect(apprentice.end_date.class).to eq(Date)
    expect(apprentice.end_date.to_s).to eq("2015-03-02")
  end

  it "returns an apprentice that is not foreman by default" do
    expect(apprentice.foreman).to eq(false)
  end

  it "returns an apprentice that is foreman" do
    apprentice = Apprentice.new(valid_params.merge(foreman: true))

    expect(apprentice.foreman).to eq(true)
  end

end
