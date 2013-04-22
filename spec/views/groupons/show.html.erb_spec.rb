require 'spec_helper'

describe "groupons/show" do
  before(:each) do
    @groupon = assign(:groupon, stub_model(Groupon,
      :title => "Title",
      :description => "MyText",
      :price => "9.99",
      :original_price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
