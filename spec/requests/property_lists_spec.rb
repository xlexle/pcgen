require 'rails_helper'

RSpec.describe "PropertyLists", type: :request do
  describe "GET /property_lists" do
    it "works! (now write some real specs)" do
      get property_lists_path
      expect(response).to have_http_status(200)
    end
  end
end
