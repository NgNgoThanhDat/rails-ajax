require "rails_helper"

RSpec.describe PoniesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ponies").to route_to("ponies#index")
    end

    it "routes to #new" do
      expect(:get => "/ponies/new").to route_to("ponies#new")
    end

    it "routes to #show" do
      expect(:get => "/ponies/1").to route_to("ponies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ponies/1/edit").to route_to("ponies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ponies").to route_to("ponies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ponies/1").to route_to("ponies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ponies/1").to route_to("ponies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ponies/1").to route_to("ponies#destroy", :id => "1")
    end

  end
end
