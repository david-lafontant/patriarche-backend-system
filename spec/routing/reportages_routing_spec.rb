require 'rails_helper'

RSpec.describe ReportagesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/reportages').to route_to('reportages#index')
    end

    it 'routes to #new' do
      expect(get: '/reportages/new').to route_to('reportages#new')
    end

    it 'routes to #show' do
      expect(get: '/reportages/1').to route_to('reportages#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/reportages/1/edit').to route_to('reportages#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/reportages').to route_to('reportages#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/reportages/1').to route_to('reportages#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/reportages/1').to route_to('reportages#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/reportages/1').to route_to('reportages#destroy', id: '1')
    end
  end
end
