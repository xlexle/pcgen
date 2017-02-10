require 'rails_helper'

RSpec.describe "Conflicts", type: :request do
  describe "GET /conflicts" do
    it "works! (now write some real specs)" do
      get conflicts_path
      expect(response).to have_http_status(200)
    end
  end
end
