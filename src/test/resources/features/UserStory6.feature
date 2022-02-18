
Background:
Given user opens website "http://3.129.60.236:8080/bank/login"
When user is on login page
And user enters valid credentials
And user clicks on the login button
And user is redirected to users bank account page


Scenario:Verify "Transactions" table with all transaction details are present
When user clicks on the checking dropdown button
Then user clicks on View Checking
Then User should see "Transaction" Header
Then User should see "Date" of Transaction
Then User should see "Category" of Transaction
Then User should see "Description" of Transaction
Then User should see "Amount" of Transaction
Then User should see "Balance" of Transaction