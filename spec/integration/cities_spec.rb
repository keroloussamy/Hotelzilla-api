require 'swagger_helper'
# require 'rspec'

RSpec.describe 'Cities API' do
  path '/api/cities' do
    get 'Retrieves cities' do
      tags 'Cities'
      produces 'application/json', 'application/xml'

      response '200', 'name found' do
        schema type: :object,
               properties: {
                 name: { type: :string }
               },
               required: ['name']

        run_test!
      end

      response '404', 'pet not found' do
        run_test!
      end
    end
  end
end
