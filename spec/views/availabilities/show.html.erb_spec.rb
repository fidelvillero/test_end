require 'spec_helper'

describe "availabilities/show.html.erb" do
  before(:each) do
    @availabilitie = assign(:availabilitie, stub_model(Availabilitie,
      :state => "State",
      :doctor_id => 1,
      :user_id => 1,
      :user => nil,
      :doctor => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
