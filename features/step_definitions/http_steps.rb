Given(/^(GET|POST|PUT|PATCH|DELETE|HEAD|CONNECT|OPTIONS|TRACE) request on "(.+)"$/) do |meth, url|
  @request = Infra['rest.request'].new(method: meth, url: url)
end

When(/^execute request$/) do
  @request.execute do |response, request, result|
    @response = response
    @result   = result
  end
end

Then(/^response code is (\d{3})$/) do |code|
  log @result
  expect(@response.code).to eq(Integer(code))
end