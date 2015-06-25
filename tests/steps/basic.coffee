path = require 'path'
Driver = require 'selenium-webdriver'

networks = [
  'pinterest'
  'twitter'
  'facebook'
  'whatsapp'
  'gplus'
  'reddit'
  'linkedin'
  'paper-plane'
]

fixture = (name) ->
  fixtureBase = path.join(path.resolve(__dirname, "../", "fixtures"), name)
  return "file:///" + fixtureBase + '.html'

module.exports = ->
  @SetDriver = ->
    # opts = @Driver.Capabilities(
    #   'phantomjs.page.settings.userAgent': "User Agent String :: mozilla/5.0 (iphone; cpu iphone os 7_0_2 like mac os x) applewebkit/537.51.1 (khtml, like gecko) version/7.0 mobile/11a501 safari/9537.53"
    #   browserName: 'phantomjs'
    # )

    console.log @Driver.Capabilities['phantomjs']

    @driver = new @Driver.Builder()
      .withCapabilities(opts)
      .build()

  @Given /^I create a Share Button$/, ->
    @driver.get(fixture('basic'))

  @When /^I click the Share Button$/, ->
    new @Widget
      root: 'label'
    .click()

  @Then /^I should see all Social Networks$/, ->
    new @Widgets
    .ShareButtonNetworks()
    .each (item, index) ->
      item.isVisible().should.eventually.be.true
