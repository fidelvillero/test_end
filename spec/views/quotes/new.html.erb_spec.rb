require 'spec_helper'

describe "quotes/new.html.erb" do
  before(:each) do
    assign(:quote, stub_model(Quote,
      :state => "MyString",
      :id_doctors => 1,
      :id_user => 1
    ).as_new_record)
  end

  it "renders new quote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => quotes_path, :method => "post" do
      assert_select "input#quote_state", :name => "quote[state]"
      assert_select "input#quote_id_doctors", :name => "quote[id_doctors]"
      assert_select "input#quote_id_user", :name => "quote[id_user]"
    end
  end
end
