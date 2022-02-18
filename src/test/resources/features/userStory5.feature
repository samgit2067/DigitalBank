Feature: This feature is to test if the user is able to view all their details on the account home page
  #Display message "Welcome (First_name) on the right top header.
  #Display a panel with account information:
  #Home title
  #BANKING ACCOUNTS title: with the following items: Checking, Saving, Transactions
  #CREDIT ACCOUNTS title: with the following items: Digital Credit
  #TRANSFERS / PAYMENTS title: with the following items: Transfer
  #3RD PARTY TRANSFERS title: with the following items: VISA Direct2

Background:
Given user opens website
When user is on the login page

Scenario: Verify user can see "Welcome message"
When user enters valid credentials
And user clicks on the login button
Then user should see welcome message on the right top header

Scenario Outline: Verify user can see welcome message on the top right corner
When user enters invalid credentials
And user clicks on the login button
Then user should see an <error message> popup
Examples:
| error message |
| Invalid credentials or access not granted due to user account status or an existing user session.|

Scenario:
When user enters valid credentials
And user clicks on the login button
Then user should see the home icon on the left side of the page

Scenario Outline: Verify the user can see bank accounts tab of the left side of the page
When user enters valid credentials
And user clicks login button
Then user should see <titles> link on the left side of the page
Examples:
| titles |
| banking account |
| checking account |
| saving account |
| external account |