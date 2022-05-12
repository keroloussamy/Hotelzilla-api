require 'swagger_helper'
# require 'rspec'

RSpec.describe 'Hotels API' do
  path '/api/hotels' do
    post 'Creates a hotel' do
      tags 'Hotels'
      consumes 'application/json', 'application/xml'
      parameter name: :hotel, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string },
          rating: { type: :integer },
          image: { type: :string },
          city_id: { type: :integer }
        },
        required: %w[name description rating image city_id]
      }

      response '201', 'hotel created' do
        let(:hotel) do
          { name: 'Howard Johnson Hotel & Casino',
            description: 'Featuring a garden.', image: null, city_id: '1' }
        end
        run_test!
      end

      response '422', 'invalid request' do
        let(:hotel) { 'foo' }
        run_test!
      end
    end
  end

  path '/api/hotels' do
    get 'Retrieves all hotels' do
      tags 'Hotels'
      produces 'application/json', 'application/xml'
      # parameter name: :hotel, :in => :path, :type => :string

      response '200', 'hotels found' do
        schema type: :object,
               properties: {
                 name: { type: :string },
                 description: { type: :string },
                 rating: { type: :integer },
                 image: { type: :string },
                 city_id: { type: :integer }
               },
               required: %w[name description rating image city_id]

        run_test!
      end

      response '404', 'hotels not found' do
        run_test!
      end
    end
  end

  path '/api/hotels/{id}' do
    get 'Retrieves a hotel' do
      tags 'Hotels'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string

      response '200', 'hotel found' do
        schema type: :object,
               properties: {
                 name: { type: :string },
                 description: { type: :string },
                 rating: { type: :integer },
                 image: { type: :string },
                 city_id: { type: :integer }
               },
               required: %w[name description rating image city_id]

        let(:id) do
          { name: 'Howard Johnson Hotel & Casino',
            description: 'Featuring a garden with a swimming pool, a gym, and a restaurant', image: null, city_id: '1' }
        end
        run_test!
      end

      response '404', 'hotels not found' do
        let(:hotel) { 'invalid' }
        run_test!
      end
    end
  end

  path '/api/hotels/{id}' do
    delete 'Delete a hotel' do
      tags 'Hotels'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string

      response '200', 'hotels found' do
        schema type: :object,
               properties: {
                 name: { type: :string },
                 description: { type: :string },
                 rating: { type: :integer },
                 image: { type: :string },
                 city_id: { type: :integer }
               },
               required: %w[name description rating image city_id]

        let(:id) do
          { name: 'Howard Johnson Hotel & Casino',
            description: 'Featuring a garden with a swimming pool, a gym, and a restaurant', image: null, city_id: '1' }
        end
        run_test!
      end

      response '404', 'hotels not found' do
        let(:hotel) { 'invalid' }
        run_test!
      end
    end
  end

  path '/api/hotels/{id}' do
    patch 'Update hotel data' do
      tags 'Hotels'
      consumes 'application/json', 'application/xml'
      parameter name: :id, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string },
          rating: { type: :integer },
          image: { type: :string },
          city_id: { type: :integer }
        },
        required: %w[name description rating image city_id]
      }

      response '201', 'hotel updated' do
        let(:id) do
          { name: 'Howard Johnson Hotel & Casino',
            description: 'Featuring a garden with a swimming pool, a gym, and a restaurant', image: null, city_id: '1' }
        end
        run_test!
      end

      response '422', 'invalid request' do
        let(:hotel) { 'foo' }
        run_test!
      end
    end
  end

  path '/api/hotelbycity/{id}' do
    get 'Retrieves a hotel according to its city' do
      tags 'Hotels'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string

      response '200', 'hotels found' do
        schema type: :object,
               properties: {
                 name: { type: :string },
                 description: { type: :string },
                 rating: { type: :integer },
                 image: { type: :string },
                 city_id: { type: :integer }
               },
               required: %w[name description rating image city_id]

        let(:id) do
          { name: 'Howard Johnson Hotel & Casino',
            description: 'Featuring a garden with a swimming pool, a gym, and a restaurant', image: null, city_id: '1' }
        end
        run_test!
      end

      response '404', 'hotels not found' do
        let(:hotel) { 'invalid' }
        run_test!
      end
    end
  end
end
