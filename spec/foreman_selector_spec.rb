require 'foreman_selector'

describe ForemanSelector do
  it "has an array of apprentices" do
    foreman_selector = ForemanSelector.new
    expect(foreman_selector.apprentices[0].first_name).to eq(["Sylwia"])
  end
end
