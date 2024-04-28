require "rails_helper"

RSpec.describe EmissionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/emissions").to route_to("emissions#index")
    end

    it "routes to #new" do
      expect(get: "/emissions/new").to route_to("emissions#new")
    end

    it "routes to #show" do
      expect(get: "/emissions/1").to route_to("emissions#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/emissions/1/edit").to route_to("emissions#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/emissions").to route_to("emissions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/emissions/1").to route_to("emissions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/emissions/1").to route_to("emissions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/emissions/1").to route_to("emissions#destroy", id: "1")
    end
  end
end
