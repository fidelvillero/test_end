require 'spec_helper'

describe "availabilities/index.html.erb" do
  before(:each) do
    assign(:availabilities, [
      stub_model(Availability,
        :state => "State",
        :doctor => nil
      ),
      stub_model(Availability,
        :state => "State",
        :doctor => nil
      )
    ])
  end

  it "renders a list of availabilities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
