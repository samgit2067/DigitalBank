Feature: This feature is to test if the user is able to create a new Checking bank account

  Background:
    Given user opens website
    When user is on login page
    And user enters valid credentials
    And user clicks on the login button
    And user is redirected to users bank account page

  Scenario:verify if user is able to see view checking and new checking options
    When user clicks on the checking dropdown button
    Then user should see
      | view checking |
      | new checking  |

  Scenario Outline: verify if user is able to click all features
    When user clicks new checking option
    Then user should be able to select <Account type>
    And radio buttons should be unchecked
    And user should be able to see these <Account ownership>
    And user should be able to insert an <account name>
    And user should be able to insert an <initial deposit> which is $25.00
    Then user clicks on submit button
    And user is redirected to page to view check in account
    And Display 'Reset' button, clicking on it should reset all filled values to default state





    Examples: | account name |  Account type  | Account ownership | initial deposit |
        #positive
    | Vipra2123     | Standard Checking | Individual        | 12312312321 |
        #negative
    | Vipra         | Interest Checking | Joint             | -122222  |