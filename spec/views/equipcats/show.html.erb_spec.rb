require 'spec_helper'

describe "equipcats/show" do
  before(:each) do
    @equipcat = assign(:equipcat, stub_model(Equipcat,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
