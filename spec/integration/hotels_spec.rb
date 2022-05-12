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
        required: [ 'name', 'description', 'rating', 'image', 'city_id' ]
      }

      response '201', 'hotel created' do
        let(:hotel) { { name: 'Howard Johnson Hotel & Casino', description: 'Featuring a garden with a swimming pool, a gym, and a restaurant, Howard Johnson Hotel & Casino offers rooms with free Wi-Fi and plasma TVs in Formosa. Free parking is provided. The breakfast was great. The pool is fantastic. Good relation price-quality.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/11307308.webp?k=f73bc53c8a5687dfb1104744aee6b9c482214e94fb047d14f26036c7adc1cf76&o=', city_id: '1' } }
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
          required: [ 'name', 'description', 'rating', 'image', 'city_id' ]

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
      parameter name: :id, :in => :path, :type => :string

      response '200', 'hotel found' do
        schema type: :object,
          properties: {
            name: { type: :string },
            description: { type: :string },
            rating: { type: :integer },
            image: { type: :string },
            city_id: { type: :integer }
          },
          required: [ 'name', 'description', 'rating', 'image', 'city_id' ]

        let(:id) { { name: 'Howard Johnson Hotel & Casino', description: 'Featuring a garden with a swimming pool, a gym, and a restaurant, Howard Johnson Hotel & Casino offers rooms with free Wi-Fi and plasma TVs in Formosa. Free parking is provided. The breakfast was great. The pool is fantastic. Good relation price-quality.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/11307308.webp?k=f73bc53c8a5687dfb1104744aee6b9c482214e94fb047d14f26036c7adc1cf76&o=', city_id: '1' } }
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
      parameter name: :id, :in => :path, :type => :string

      response '200', 'hotels found' do
        schema type: :object,
          properties: {
            name: { type: :string },
            description: { type: :string },
            rating: { type: :integer },
            image: { type: :string },
            city_id: { type: :integer }
          },
          required: [ 'name', 'description', 'rating', 'image', 'city_id' ]

        let(:id) { { name: 'Howard Johnson Hotel & Casino', description: 'Featuring a garden with a swimming pool, a gym, and a restaurant, Howard Johnson Hotel & Casino offers rooms with free Wi-Fi and plasma TVs in Formosa. Free parking is provided. The breakfast was great. The pool is fantastic. Good relation price-quality.', rating: '4.0', image: 'https://t-cf.bstatic.com/xdata/images/hotel/square200/11307308.webp?k=f73bc53c8a5687dfb1104744aee6b9c482214e94fb047d14f26036c7adc1cf76&o=', city_id: '1' } }
        run_test!
      end

      response '404', 'hotels not found' do
        let(:hotel) { 'invalid' }
        run_test!
      end
   end

  end
end