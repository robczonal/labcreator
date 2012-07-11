require 'spec_helper'

describe "testxes/edit" do
  before(:each) do
    @testx = assign(:testx, stub_model(Testx,
      :name => "MyString",
      :analysis => nil
    ))
  end

  it "renders the edit testx form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => testxes_path(@testx), :method => "post" do
      assert_select "input#testx_name", :name => "testx[name]"
      assert_select "input#testx_analysis", :name => "testx[analysis]"
    end
  end
end
