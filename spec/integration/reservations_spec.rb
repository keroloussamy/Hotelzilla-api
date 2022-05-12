require 'swagger_helper'
# require 'rspec'

RSpec.describe 'Reservations API' do
  path '/api/reservations' do
    get 'Retrieves reservations' do
      tags 'Reservations'
      produces 'application/json', 'application/xml'

      response '200', 'name found' do
        schema type: :object,
               properties: {
                 date: { type: :string },
                 room_type_id: { type: :integer },
                 hotel_id: { type: :id }
               },
               required: ['date', 'room_type_id', 'hotel_id']

        run_test!
      end

      response '404', 'pet not found' do
        run_test!
      end
    end
  end
end
