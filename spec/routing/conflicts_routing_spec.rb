require "rails_helper"

RSpec.describe ConflictsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/conflicts").to route_to("conflicts#index")
    end

    it "routes to #new" do
      expect(:get => "/conflicts/new").to route_to("conflicts#new")
    end

    it "routes to #show" do
      expect(:get => "/conflicts/1").to route_to("conflicts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/conflicts/1/edit").to route_to("conflicts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/conflicts").to route_to("conflicts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/conflicts/1").to route_to("conflicts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/conflicts/1").to route_to("conflicts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/conflicts/1").to route_to("conflicts#destroy", :id => "1")
    end

  end
end
