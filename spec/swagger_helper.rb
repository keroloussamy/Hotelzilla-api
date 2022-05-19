require 'rails_helper'

server = {
  url: 'https://hotelzilla-api.herokuapp.com',
  variables: {
    defaultHost: {
      default: 'https://hotelzilla-api.herokuapp.com'
    }
  }
}

RSpec.configure do |config|
  config.swagger_root = Rails.root.join('swagger').to_s
  config.swagger_docs = {
    'v1/swagger.yaml' => {
      components: {
        securitySchemes: {
          ApiKeyAuth: {
            type: :apiKey,
            name: 'Authorization',
            in: :header
          }
        }
      },
      openapi: '3.0.1',
      info: {
        title: 'Hotelzilla API',
        version: 'v1',
        description: 'This is the first version of Hottelzilla API.'
      },
      paths: {},
      servers: [
        server
      ]
    }
  }
  config.swagger_format = :yaml
end
