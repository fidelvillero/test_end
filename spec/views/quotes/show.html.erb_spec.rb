require 'spec_helper'

describe "quotes/show.html.erb" do
  before(:each) do
    @quote = assign(:quote, stub_model(Quote,
      :state => "State",
      :id_doctors => 1,
      :id_user => 1
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
  end
end
