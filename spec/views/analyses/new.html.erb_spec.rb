require 'spec_helper'

describe "analyses/new" do
  before(:each) do
    assign(:analysis, stub_model(Analysis,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new analysis form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => analyses_path, :method => "post" do
      assert_select "input#analysis_name", :name => "analysis[name]"
    end
  end
end
