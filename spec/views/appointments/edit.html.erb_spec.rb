require 'spec_helper'

describe "appointments/edit.html.erb" do
  before(:each) do
    @appointment = assign(:appointment, stub_model(Appointment,
      :state => "MyString",
      :user => nil,
      :doctor => nil
    ))
  end

  it "renders the edit appointment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => appointments_path(@appointment), :method => "post" do
      assert_select "input#appointment_state", :name => "appointment[state]"
      assert_select "input#appointment_user", :name => "appointment[user]"
      assert_select "input#appointment_doctor", :name => "appointment[doctor]"
    end
  end
end
