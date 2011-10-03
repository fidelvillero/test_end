require 'spec_helper'

describe "doctors/index.html.erb" do
  before(:each) do
    assign(:doctors, [
      stub_model(Doctor,
        :name => "Name",
        :mail => "Mail",
        :address => "Address",
        :password => "Password",
        :role => "Role"
      ),
      stub_model(Doctor,
        :name => "Name",
        :mail => "Mail",
        :address => "Address",
        :password => "Password",
        :role => "Role"
      )
    ])
  end

  it "renders a list of doctors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mail".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Role".to_s, :count => 2
  end
end
