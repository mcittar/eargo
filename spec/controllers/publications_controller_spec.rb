require 'rails_helper'

RSpec.describe PublicationsController, type: :controller do
  render_views

  describe 'GET #index' do

    before(:each) do
      get :index, { format: :json }
    end

    it { should render_template('publications/index.json.jbuilder') }
    it { should respond_with(200) }

  end
end
