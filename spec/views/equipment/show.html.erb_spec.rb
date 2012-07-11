require 'spec_helper'

describe "equipment/show" do
  before(:each) do
    @equipment = assign(:equipment, stub_model(Equipment,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Availability/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Externallink/)
    rendered.should match(/Picture/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Type/)
    rendered.should match(//)
  end
end
