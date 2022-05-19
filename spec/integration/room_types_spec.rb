require 'swagger_helper'

RSpec.describe 'RoomTypes API' do
  path '/api/room_types' do
    get 'Retrieves types of rooms' do
      tags 'Room Types'
      produces 'application/json', 'application/xml'
      security [ApiKeyAuth: []]

      response '200', 'Room Types found' do
        schema type: :object,
               properties: {
                 name: { type: :string },
                 description: { type: :string },
                 price: { type: :integer }

               },
               required: %w[name description price]

        run_test!
      end

      response '404', 'Room Types not found' do
        run_test!
      end
    end
  end
end
