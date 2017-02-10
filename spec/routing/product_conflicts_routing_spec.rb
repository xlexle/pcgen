require "rails_helper"

RSpec.describe ProductConflictsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/product_conflicts").to route_to("product_conflicts#index")
    end

    it "routes to #new" do
      expect(:get => "/product_conflicts/new").to route_to("product_conflicts#new")
    end

    it "routes to #show" do
      expect(:get => "/product_conflicts/1").to route_to("product_conflicts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/product_conflicts/1/edit").to route_to("product_conflicts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/product_conflicts").to route_to("product_conflicts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/product_conflicts/1").to route_to("product_conflicts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/product_conflicts/1").to route_to("product_conflicts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/product_conflicts/1").to route_to("product_conflicts#destroy", :id => "1")
    end

  end
end
