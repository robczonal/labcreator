require 'spec_helper'

describe "equipcats/index" do
  before(:each) do
    assign(:equipcats, [
      stub_model(Equipcat,
        :name => "Name"
      ),
      stub_model(Equipcat,
        :name => "Name"
      )
    ])
  end

  it "renders a list of equipcats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
