require "spec_helper"

describe GrouponsController do
  describe "routing" do

    it "routes to #index" do
      get("/groupons").should route_to("groupons#index")
    end

    it "routes to #new" do
      get("/groupons/new").should route_to("groupons#new")
    end

    it "routes to #show" do
      get("/groupons/1").should route_to("groupons#show", :id => "1")
    end

    it "routes to #edit" do
      get("/groupons/1/edit").should route_to("groupons#edit", :id => "1")
    end

    it "routes to #create" do
      post("/groupons").should route_to("groupons#create")
    end

    it "routes to #update" do
      put("/groupons/1").should route_to("groupons#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/groupons/1").should route_to("groupons#destroy", :id => "1")
    end

  end
end
