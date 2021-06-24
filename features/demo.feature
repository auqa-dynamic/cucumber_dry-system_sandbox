Feature: demo

  Background:
    * log timestamp
    * log dependencies

  Scenario: http on google.com
    Given PATCH request on "https://www.google.com/?q=test"
    When execute request
    Then response code is 405
    * log dependencies
    * Savon not present

  Scenario: soap on weather.gov
    Given service on "https://graphical.weather.gov/xml/DWMLgen/wsdl/ndfdXML.wsdl"
    When execute operation corner_points
    Then response body is presented
    * log dependencies
#    * RestClient not present
