require "spec_helper"

describe TestxesController do
  describe "routing" do

    it "routes to #index" do
      get("/testxes").should route_to("testxes#index")
    end

    it "routes to #new" do
      get("/testxes/new").should route_to("testxes#new")
    end

    it "routes to #show" do
      get("/testxes/1").should route_to("testxes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/testxes/1/edit").should route_to("testxes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/testxes").should route_to("testxes#create")
    end

    it "routes to #update" do
      put("/testxes/1").should route_to("testxes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/testxes/1").should route_to("testxes#destroy", :id => "1")
    end

  end
end
