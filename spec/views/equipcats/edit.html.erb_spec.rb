require 'spec_helper'

describe "equipcats/edit" do
  before(:each) do
    @equipcat = assign(:equipcat, stub_model(Equipcat,
      :name => "MyString"
    ))
  end

  it "renders the edit equipcat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => equipcats_path(@equipcat), :method => "post" do
      assert_select "input#equipcat_name", :name => "equipcat[name]"
    end
  end
end
