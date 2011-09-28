require 'spec_helper'

describe "doctors/new.html.erb" do
  before(:each) do
    assign(:doctor, stub_model(Doctor,
      :name => "MyString",
      :mail => "MyString",
      :address => "MyString",
      :password => "MyString",
      :role => "MyString"
    ).as_new_record)
  end

  it "renders new doctor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => doctors_path, :method => "post" do
      assert_select "input#doctor_name", :name => "doctor[name]"
      assert_select "input#doctor_mail", :name => "doctor[mail]"
      assert_select "input#doctor_address", :name => "doctor[address]"
      assert_select "input#doctor_password", :name => "doctor[password]"
      assert_select "input#doctor_role", :name => "doctor[role]"
    end
  end
end
