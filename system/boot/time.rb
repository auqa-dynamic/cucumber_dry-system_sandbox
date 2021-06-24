# frozen_string_literal: true

Infra.boot(:time) do
  register('time.now', call: false) { Time.now }
end
