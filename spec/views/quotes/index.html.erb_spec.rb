require 'spec_helper'

describe "quotes/index.html.erb" do
  before(:each) do
    assign(:quotes, [
      stub_model(Quote,
        :state => "State",
        :id_doctors => 1,
        :id_user => 1
      ),
      stub_model(Quote,
        :state => "State",
        :id_doctors => 1,
        :id_user => 1
      )
    ])
  end

  it "renders a list of quotes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
