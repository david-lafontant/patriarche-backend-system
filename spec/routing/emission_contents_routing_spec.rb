require 'rails_helper'

RSpec.describe EmissionContentsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/emission_contents').to route_to('emission_contents#index')
    end

    it 'routes to #new' do
      expect(get: '/emission_contents/new').to route_to('emission_contents#new')
    end

    it 'routes to #show' do
      expect(get: '/emission_contents/1').to route_to('emission_contents#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/emission_contents/1/edit').to route_to('emission_contents#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/emission_contents').to route_to('emission_contents#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/emission_contents/1').to route_to('emission_contents#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/emission_contents/1').to route_to('emission_contents#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/emission_contents/1').to route_to('emission_contents#destroy', id: '1')
    end
  end
end
