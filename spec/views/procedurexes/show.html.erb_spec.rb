require 'spec_helper'

describe "procedurexes/show" do
  before(:each) do
    @procedurex = assign(:procedurex, stub_model(Procedurex,
      :name => "Name",
      :astmip => "Astmip",
      :subtype => "Subtype",
      :description => "MyText",
      :testx => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Astmip/)
    rendered.should match(/Subtype/)
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
