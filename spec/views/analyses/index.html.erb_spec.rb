require 'spec_helper'

describe "analyses/index" do
  before(:each) do
    assign(:analyses, [
      stub_model(Analysis,
        :name => "Name"
      ),
      stub_model(Analysis,
        :name => "Name"
      )
    ])
  end

  it "renders a list of analyses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
