require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "Name",
      :client => "Client",
      :location => "Location",
      :email => "Email",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Client/)
    rendered.should match(/Location/)
    rendered.should match(/Email/)
    rendered.should match(/MyText/)
  end
end
