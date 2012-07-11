require 'spec_helper'

describe "equipment/index" do
  before(:each) do
    assign(:equipment, [
      stub_model(Equipment,
        :name => "Name",
        :availability => "Availability",
        :height => 1.5,
        :width => 1.5,
        :depth => 1.5,
        :price => 1.5,
        :externallink => "Externallink",
        :picture => "Picture",
        :description => "MyText",
        :alert => "MyText",
        :type => "Type",
        :procedurex => nil
      ),
      stub_model(Equipment,
        :name => "Name",
        :availability => "Availability",
        :height => 1.5,
        :width => 1.5,
        :depth => 1.5,
        :price => 1.5,
        :externallink => "Externallink",
        :picture => "Picture",
        :description => "MyText",
        :alert => "MyText",
        :type => "Type",
        :procedurex => nil
      )
    ])
  end

  it "renders a list of equipment" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Availability".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Externallink".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
