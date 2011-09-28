require 'spec_helper'

describe "availabilities/new.html.erb" do
  before(:each) do
    assign(:availabilitie, stub_model(Availabilitie,
      :state => "MyString",
      :doctor_id => 1,
      :user_id => 1,
      :user => nil,
      :doctor => nil
    ).as_new_record)
  end

  it "renders new availabilitie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => availabilities_path, :method => "post" do
      assert_select "input#availabilitie_state", :name => "availabilitie[state]"
      assert_select "input#availabilitie_doctor_id", :name => "availabilitie[doctor_id]"
      assert_select "input#availabilitie_user_id", :name => "availabilitie[user_id]"
      assert_select "input#availabilitie_user", :name => "availabilitie[user]"
      assert_select "input#availabilitie_doctor", :name => "availabilitie[doctor]"
    end
  end
end
