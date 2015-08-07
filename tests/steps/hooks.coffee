module.exports = ->
  @Given /^I create a hooks Share Button$/, () ->
    @driver.visit("file:///#{process.cwd()}/tests/fixtures/hooks.html")

  @When /^I click the Reddit logo$/, () ->
    new @Widgets.ShareButton().click()
    new @Widgets
      .ShareButtonNetworks()
      .filter( (item) ->
        item.hasClass('reddit')
      )
      .then (list) ->
        list[0].click('a')

  @Then /^I should see the classes "([^"]*)"$/, (arg1) ->
    @Widget.getAttribute(
      selector: "div#hook"
      attribute: "class"
    ).should.eventually.eql("hook before after")
