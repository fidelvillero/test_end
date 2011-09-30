require 'spec_helper'

describe "quotes/edit.html.erb" do
  before(:each) do
    @quote = assign(:quote, stub_model(Quote,
      :state => "MyString",
      :id_doctors => 1,
      :id_user => 1
    ))
  end

  it "renders the edit quote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => quotes_path(@quote), :method => "post" do
      assert_select "input#quote_state", :name => "quote[state]"
      assert_select "input#quote_id_doctors", :name => "quote[id_doctors]"
      assert_select "input#quote_id_user", :name => "quote[id_user]"
    end
  end
end
