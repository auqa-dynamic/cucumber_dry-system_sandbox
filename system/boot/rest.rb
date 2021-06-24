# frozen_string_literal: true

Infra.boot(:rest, namespace: :rest) do
  init do
    require 'rest-client'
  end

  start do
    register :client, RestClient
    register :request, RestClient::Request
  end
end
