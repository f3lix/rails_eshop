require 'spec_helper'

describe "groupons/edit" do
  before(:each) do
    @groupon = assign(:groupon, stub_model(Groupon,
      :title => "MyString",
      :description => "MyText",
      :price => "9.99",
      :original_price => "9.99"
    ))
  end

  it "renders the edit groupon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", groupon_path(@groupon), "post" do
      assert_select "input#groupon_title[name=?]", "groupon[title]"
      assert_select "textarea#groupon_description[name=?]", "groupon[description]"
      assert_select "input#groupon_price[name=?]", "groupon[price]"
      assert_select "input#groupon_original_price[name=?]", "groupon[original_price]"
    end
  end
end
