# frozen_string_literal: true

require 'dry/system/container'

class Infra < Dry::System::Container
  configure do |config|
    config.name = :sandbox
  end
end

at_exit { Infra.shutdown! }
