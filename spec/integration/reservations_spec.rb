require 'swagger_helper'
# require 'rspec'

RSpec.describe 'Reservations API' do
  path '/api/reservations' do
    get 'Retrieves reservations' do
      tags 'Reservations'
      produces 'application/json', 'application/xml'
      security [ApiKeyAuth: []]

      response '200', 'name found' do
        schema type: :object,
               properties: {
                 date: { type: :string },
                 room_type_id: { type: :integer },
                 hotel_id: { type: :id }
               },
               required: %w[date room_type_id hotel_id]

        run_test!
      end

      response '404', 'pet not found' do
        run_test!
      end
    end
  end

  path '/api/reservations' do
    post 'Creates a reservation' do
      tags 'Reservations'
      consumes 'application/json', 'application/xml'
      security [ApiKeyAuth: []]

      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          date: { type: :string },
          room_type_id: { type: :integer },
          hotel_id: { type: :integer }

        },
        required: %w[name room_type_id hotel_id]
      }

      response '201', 'Reservation created' do
        let(:reservation) do
          { name: 'Single', description: 'A room assigned to one person. May have one or more beds.', price: 300 }
        end
        run_test!
      end

      response '422', 'invalid request' do
        let(:reservation) { 'foo' }
        run_test!
      end
    end
  end
end
