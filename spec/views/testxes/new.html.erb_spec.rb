require 'spec_helper'

describe "testxes/new" do
  before(:each) do
    assign(:testx, stub_model(Testx,
      :name => "MyString",
      :analysis => nil
    ).as_new_record)
  end

  it "renders new testx form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => testxes_path, :method => "post" do
      assert_select "input#testx_name", :name => "testx[name]"
      assert_select "input#testx_analysis", :name => "testx[analysis]"
    end
  end
end
