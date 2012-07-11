require 'spec_helper'

describe "testxes/index" do
  before(:each) do
    assign(:testxes, [
      stub_model(Testx,
        :name => "Name",
        :analysis => nil
      ),
      stub_model(Testx,
        :name => "Name",
        :analysis => nil
      )
    ])
  end

  it "renders a list of testxes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
