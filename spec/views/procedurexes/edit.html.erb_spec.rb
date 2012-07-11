require 'spec_helper'

describe "procedurexes/edit" do
  before(:each) do
    @procedurex = assign(:procedurex, stub_model(Procedurex,
      :name => "MyString",
      :astmip => "MyString",
      :subtype => "MyString",
      :description => "MyText",
      :testx => nil
    ))
  end

  it "renders the edit procedurex form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => procedurexes_path(@procedurex), :method => "post" do
      assert_select "input#procedurex_name", :name => "procedurex[name]"
      assert_select "input#procedurex_astmip", :name => "procedurex[astmip]"
      assert_select "input#procedurex_subtype", :name => "procedurex[subtype]"
      assert_select "textarea#procedurex_description", :name => "procedurex[description]"
      assert_select "input#procedurex_testx", :name => "procedurex[testx]"
    end
  end
end
