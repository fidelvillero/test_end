require 'spec_helper'

describe "appointments/index.html.erb" do
  before(:each) do
    assign(:appointments, [
      stub_model(Appointment,
        :state => "State",
        :user => nil,
        :doctor => nil
      ),
      stub_model(Appointment,
        :state => "State",
        :user => nil,
        :doctor => nil
      )
    ])
  end

  it "renders a list of appointments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
