require "spec_helper"

describe ProcedurexesController do
  describe "routing" do

    it "routes to #index" do
      get("/procedurexes").should route_to("procedurexes#index")
    end

    it "routes to #new" do
      get("/procedurexes/new").should route_to("procedurexes#new")
    end

    it "routes to #show" do
      get("/procedurexes/1").should route_to("procedurexes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/procedurexes/1/edit").should route_to("procedurexes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/procedurexes").should route_to("procedurexes#create")
    end

    it "routes to #update" do
      put("/procedurexes/1").should route_to("procedurexes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/procedurexes/1").should route_to("procedurexes#destroy", :id => "1")
    end

  end
end
