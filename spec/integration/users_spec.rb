require 'swagger_helper'
# require 'rspec'

RSpec.describe 'Users API' do
  path '/users' do
    post 'Creates a user' do
      tags 'Users'
      consumes 'application/json', 'application/xml'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          username: { type: :string },
          email: { type: :string },
          password: { type: :string }
        },
        required: %w[name username email password]
      }

      response '201', 'user created' do
        let(:user) do
          {
            name: 'Anja',
            username: 'Anja',
            email: 'Anja@gmail.com',
            password: 'Anja'
          }
        end
        run_test!
      end

      response '422', 'invalid request' do
        let(:user) { 'foo' }
        run_test!
      end
    end
  end

  path '/users' do
    get 'Retrieves all users' do
      tags 'Users'
      produces 'application/json', 'application/xml'

      response '200', 'users found' do
        schema type: :object,
               properties: {
                 name: { type: :string },
                 username: { type: :string },
                 email: { type: :string },
                 password: { type: :string }
               },
               required: %w[name username email password]

        run_test!
      end

      response '404', 'users not found' do
        run_test!
      end
    end
  end

  path '/users/{id}' do
    get 'Retrieves a user' do
      tags 'Users'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string

      response '200', 'user found' do
        schema type: :object,
               properties: {
                 name: { type: :string },
                 username: { type: :string },
                 email: { type: :string },
                 password: { type: :string }
               },
               required: %w[name username email password]

        let(:user) do
          {
            name: 'Anja',
            username: 'Anja',
            email: 'Anja@gmail.com',
            password: 'Anja'
          }
        end
        run_test!
      end

      response '404', 'users not found' do
        let(:user) { 'invalid' }
        run_test!
      end
    end
  end

  path '/users/{id}' do
    delete 'Delete a user' do
      tags 'Users'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string

      response '200', 'users found' do
        schema type: :object,
               properties: {
                 name: { type: :string },
                 username: { type: :string },
                 email: { type: :string },
                 password: { type: :string }
               },
               required: %w[name username email password]

        let(:user) do
          {
            name: 'Anja',
            username: 'Anja',
            email: 'Anja@gmail.com',
            password: 'Anja'
          }
        end
        run_test!
      end

      response '404', 'user not found' do
        let(:user) { 'invalid' }
        run_test!
      end
    end
  end

  path '/users/{id}' do
    patch 'Update user data' do
      tags 'Users'
      consumes 'application/json', 'application/xml'
      parameter name: :id, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          username: { type: :string },
          email: { type: :string },
          password: { type: :string }
        },
        required: %w[name username email password]
      }

      response '201', 'user updated' do
        let(:user) do
          {
            name: 'Anja',
            username: 'Anja',
            email: 'Anja@gmail.com',
            password: 'Anja'
          }
        end
        run_test!
      end

      response '422', 'invalid request' do
        let(:user) { 'foo' }
        run_test!
      end
    end
  end
end
