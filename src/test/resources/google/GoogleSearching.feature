#Auto generated Octane revision tag
@BSPID30006REV0.2.0
Feature: Google Searching
  As a web surfer, I want to search Google, so that I can learn new things.

   # Author: Andy

  Scenario: Simple Google search
    Given a web browser is on the Google page
    When the search phrase "panda" is entered
    Then results for "panda" are shown
    And the related results include Panda Express
    And it is working
    And new step


  Scenario Outline: Simple Google searches
    Given a web browser is on the Google page
    When the search phrase "<phrase>" is entered
    Then results for "<phrase>" are shown
    And the related results include "<related>"

    Examples: Animals
      | phrase   | related       |
      | panda    | Panda Express |
      | elephant | Elephant Man  |

  Scenario: Add one test scenario by Eugen
    Given a test
    When you run it
    Then you have results
