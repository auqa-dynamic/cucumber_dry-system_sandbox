# frozen_string_literal: true

Infra.boot(:soap, namespace: :soap) do
  init do
    require 'savon'
  end
  start do
    register :client, Savon::Client
  end
end
