When(/^log timestamp$/) do
  log Infra['time.now'].inspect
end

When(/^log dependencies$/) do
  log "Booted: #{Infra.keys}"
end

When(/^(RestClient|Savon) not present$/) do |const|
  expect(self.class.constants).to_not include(const.to_sym)
end