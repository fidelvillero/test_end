require 'spec_helper'

describe "appointments/show.html.erb" do
  before(:each) do
    @appointment = assign(:appointment, stub_model(Appointment,
      :state => "State",
      :user => nil,
      :doctor => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
