require 'spec_helper'

describe Project do
  it "has a valid factory" do
    FactoryGirl.create(:project).should be_valid
  end
  
  it "is invalid without a name" do
    FactoryGirl.build(:project, :name => nil).should_not be_valid
  end
  
  #it "should reject duplicate names" do
  #  athlete = FactoryGirl.build(:project)
  #FactoryGirl.build(:project)
  #FactoryGirl.create(:project).should_not be_valid
  ##FactoryGirl.build(:name, project: project, name: "Project", client: "Shell").should_not be_valid
  #end
    
  it "is valid without a client" do #for testing and training
    FactoryGirl.build(:project, :location => nil).should be_valid
  end
  
end
