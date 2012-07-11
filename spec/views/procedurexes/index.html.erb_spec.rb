require 'spec_helper'

describe "procedurexes/index" do
  before(:each) do
    assign(:procedurexes, [
      stub_model(Procedurex,
        :name => "Name",
        :astmip => "Astmip",
        :subtype => "Subtype",
        :description => "MyText",
        :testx => nil
      ),
      stub_model(Procedurex,
        :name => "Name",
        :astmip => "Astmip",
        :subtype => "Subtype",
        :description => "MyText",
        :testx => nil
      )
    ])
  end

  it "renders a list of procedurexes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Astmip".to_s, :count => 2
    assert_select "tr>td", :text => "Subtype".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
