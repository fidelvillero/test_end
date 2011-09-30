require 'spec_helper'

describe "availabilities/edit.html.erb" do
  before(:each) do
    @availability = assign(:availability, stub_model(Availability,
      :state => "MyString",
      :doctor => nil
    ))
  end

  it "renders the edit availability form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => availabilities_path(@availability), :method => "post" do
      assert_select "input#availability_state", :name => "availability[state]"
      assert_select "input#availability_doctor", :name => "availability[doctor]"
    end
  end
end
