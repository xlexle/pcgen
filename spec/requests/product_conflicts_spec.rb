require 'rails_helper'

RSpec.describe "ProductConflicts", type: :request do
  describe "GET /product_conflicts" do
    it "works! (now write some real specs)" do
      get product_conflicts_path
      expect(response).to have_http_status(200)
    end
  end
end
