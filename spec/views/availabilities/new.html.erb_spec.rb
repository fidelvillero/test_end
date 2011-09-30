require 'spec_helper'

describe "availabilities/new.html.erb" do
  before(:each) do
    assign(:availability, stub_model(Availability,
      :state => "MyString",
      :doctor => nil
    ).as_new_record)
  end

  it "renders new availability form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => availabilities_path, :method => "post" do
      assert_select "input#availability_state", :name => "availability[state]"
      assert_select "input#availability_doctor", :name => "availability[doctor]"
    end
  end
end
