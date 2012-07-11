require 'spec_helper'

describe "testxes/show" do
  before(:each) do
    @testx = assign(:testx, stub_model(Testx,
      :name => "Name",
      :analysis => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
  end
end
