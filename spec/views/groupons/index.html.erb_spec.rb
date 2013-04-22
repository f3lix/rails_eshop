require 'spec_helper'

describe "groupons/index" do
  before(:each) do
    assign(:groupons, [
      stub_model(Groupon,
        :title => "Title",
        :description => "MyText",
        :price => "9.99",
        :original_price => "9.99"
      ),
      stub_model(Groupon,
        :title => "Title",
        :description => "MyText",
        :price => "9.99",
        :original_price => "9.99"
      )
    ])
  end

  it "renders a list of groupons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
