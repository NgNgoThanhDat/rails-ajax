require 'rails_helper'

RSpec.describe "Ponies", type: :request do
  describe "GET /ponies" do
    it "works! (now write some real specs)" do
      get ponies_path
      expect(response).to have_http_status(200)
    end
  end
end
