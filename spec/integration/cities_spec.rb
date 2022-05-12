require 'swagger_helper'
# require 'rspec'

RSpec.describe 'Cities API' do
  path 'api/cities' do
    get 'Retrieves cities' do
      tags 'Cities'
      produces 'application/json', 'application/xml'
      parameter name: :name, in: :path, type: :string

      response '200', 'name found' do
        schema type: :object,
               properties: {
                 name: { type: :string }
               },
               required: ['name']

        let(:name) { City.create(name: 'Kampala') }
        run_test!
      end

      response '404', 'pet not found' do
        let(:name) { 'invalid' }
        run_test!
      end
    end
  end
end
