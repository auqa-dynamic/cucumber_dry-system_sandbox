Given(/^service on "(.+)"$/) do |url|
  @service = Infra['soap.client'].new(wsdl: url)
end

When(/^execute operation (\S+)$/) do |name|
  @response = @service.call(name.to_sym)
end

Then(/^response body is presented$/) do
  body = @response.body
  log body
  expect(body.empty?).to be false
end