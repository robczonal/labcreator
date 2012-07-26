require "spec_helper"

describe EquipcatsController do
  describe "routing" do

    it "routes to #index" do
      get("/equipcats").should route_to("equipcats#index")
    end

    it "routes to #new" do
      get("/equipcats/new").should route_to("equipcats#new")
    end

    it "routes to #show" do
      get("/equipcats/1").should route_to("equipcats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/equipcats/1/edit").should route_to("equipcats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/equipcats").should route_to("equipcats#create")
    end

    it "routes to #update" do
      put("/equipcats/1").should route_to("equipcats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/equipcats/1").should route_to("equipcats#destroy", :id => "1")
    end

  end
end
