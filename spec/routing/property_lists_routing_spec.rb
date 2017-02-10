require "rails_helper"

RSpec.describe PropertyListsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/property_lists").to route_to("property_lists#index")
    end

    it "routes to #new" do
      expect(:get => "/property_lists/new").to route_to("property_lists#new")
    end

    it "routes to #show" do
      expect(:get => "/property_lists/1").to route_to("property_lists#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/property_lists/1/edit").to route_to("property_lists#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/property_lists").to route_to("property_lists#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/property_lists/1").to route_to("property_lists#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/property_lists/1").to route_to("property_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/property_lists/1").to route_to("property_lists#destroy", :id => "1")
    end

  end
end
