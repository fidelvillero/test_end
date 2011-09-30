require 'spec_helper'

describe "availabilities/show.html.erb" do
  before(:each) do
    @availability = assign(:availability, stub_model(Availability,
      :state => "State",
      :doctor => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
