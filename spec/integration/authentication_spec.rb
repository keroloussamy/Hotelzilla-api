require 'swagger_helper'
# require 'rspec'


RSpec.describe 'Login API' do

path '/auth/login' do

  post 'Creates a token' do
    tags 'Login'
    consumes 'application/json', 'application/xml'
    parameter name: :login, in: :body, schema: {
      type: :object,
      properties: {
        email: { type: :string },
        password: { type: :string }

      },
      required: [ 'email', 'password' ]
    }

    response '201', 'token created' do
      let(:login) { { email: 'Anja@gmail.com', password: 'Anja' } }
      run_test!
    end

    response '422', 'invalid request' do
      let(:login) { 'foo' } 
      run_test!
    end
  end
end
end