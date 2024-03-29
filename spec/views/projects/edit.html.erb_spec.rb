require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "MyString",
      :client => "MyString",
      :location => "MyString",
      :email => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path(@project), :method => "post" do
      assert_select "input#project_name", :name => "project[name]"
      assert_select "input#project_client", :name => "project[client]"
      assert_select "input#project_location", :name => "project[location]"
      assert_select "input#project_email", :name => "project[email]"
      assert_select "textarea#project_description", :name => "project[description]"
    end
  end
end
