require 'spec_helper'

describe "equipcats/new" do
  before(:each) do
    assign(:equipcat, stub_model(Equipcat,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new equipcat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => equipcats_path, :method => "post" do
      assert_select "input#equipcat_name", :name => "equipcat[name]"
    end
  end
end
