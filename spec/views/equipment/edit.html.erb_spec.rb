require 'spec_helper'

describe "equipment/edit" do
  before(:each) do
    @equipment = assign(:equipment, stub_model(Equipment,
      :name => "MyString",
      :availability => "MyString",
      :height => 1.5,
      :width => 1.5,
      :depth => 1.5,
      :price => 1.5,
      :externallink => "MyString",
      :picture => "MyString",
      :description => "MyText",
      :alert => "MyText",
      :type => "",
      :procedurex => nil
    ))
  end

  it "renders the edit equipment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => equipment_index_path(@equipment), :method => "post" do
      assert_select "input#equipment_name", :name => "equipment[name]"
      assert_select "input#equipment_availability", :name => "equipment[availability]"
      assert_select "input#equipment_height", :name => "equipment[height]"
      assert_select "input#equipment_width", :name => "equipment[width]"
      assert_select "input#equipment_depth", :name => "equipment[depth]"
      assert_select "input#equipment_price", :name => "equipment[price]"
      assert_select "input#equipment_externallink", :name => "equipment[externallink]"
      assert_select "input#equipment_picture", :name => "equipment[picture]"
      assert_select "textarea#equipment_description", :name => "equipment[description]"
      assert_select "textarea#equipment_alert", :name => "equipment[alert]"
      assert_select "input#equipment_type", :name => "equipment[type]"
      assert_select "input#equipment_procedurex", :name => "equipment[procedurex]"
    end
  end
end
