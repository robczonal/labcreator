require 'spec_helper'

describe "analyses/edit" do
  before(:each) do
    @analysis = assign(:analysis, stub_model(Analysis,
      :name => "MyString"
    ))
  end

  it "renders the edit analysis form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => analyses_path(@analysis), :method => "post" do
      assert_select "input#analysis_name", :name => "analysis[name]"
    end
  end
end
