# What was done:

iOS Deployment Target was changed to 17.0

ViewController
* Added accessibility ID for Button element
* Changed type - Float to Int in `generate` function

ReferenceiOSTests
- Added unit test `testAttributifyStringDoesNotModifyContent()` (more tests can be created using snapshot testing)

Added folder `helpers` with following extensions for String and Array + Formatter
- StringExtension has two extensions: `toCurrency()` and `isCurrency`
- ArrayExtension has `areAllElementsUnique()` extension
- Formatter with `currencyFormatter` method

Created Page Object for home screen - `HomeScreenLocator` with locators and one method

ReferenceiOSUITests
- Added function `tearDown()` to terminate the app after each test
- Added next UI tests:
    - testViewControllerInitialization
    - testGenerateValue
    - testIsValidCurrency
    - testIsPositiveValue
    - testIsCurrencyFormatEuro
    - testGenerateUniqueValues

Added method `testAccessibilityAudits` - to automatically perform accessibility audits on the app through UI tests as the app should be accessible for everyone.

The result is:
- AccessibilityAuditsUITests.swift:20: Dynamic Type font sizes are unsupported
- AccessibilityAuditsUITests.swift:20: Dynamic Type font sizes are unsupported
- AccessibilityAuditsUITests.swift:20: Label duplicates traits


# Test assignment

We are looking for Automation Engineers that have the mindset "only the sky is the limit" and "automation doesn't stop at testing, it's just a beginning!" ;)

The purpose of this test assignment is to assess the applicant's automation skills, allowing him/her to show the best they can do and how fast they can learn.
It is an open assignment. There is no the right answer and there is no end goal other than proving yourself. Surprise us!

Make sure that you give detailed comments or descriptions of your tests.
When the assignment is complete, please push your solution to Github(Gitlab) and send us the link 

If you have any questions, please contact us back.


Good luck.

PS. We don't expect you to spend weeks (and sleepless nights) on doing it. Lets see how far you can get in 6-10 hours. We want to see how you approach and solve problems.

PSPS. Please use mobile native tools.


## Project set-up

### Gemfile

This file specifies which Ruby dependencies (gems) are needed for our app.

### fastlane/Fastfile

This is where tha magic happens.
