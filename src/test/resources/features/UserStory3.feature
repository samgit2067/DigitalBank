#​
#---
# #### User Story #3:
#>As a User,
#I want to have the ability to view all my Checking bank account
#so that I can manage my accounts and see account balance and transactions.
#>
#​
#Functionalities:
#1. After User creates a new checking account, user should be able to view checking account information.
#All information should match the entered values during the submition of checking account.
#2. Display "Transactions" table with all transaction details:
#- Display header "Date": Date and time when transaction happened.
#- Display header "Category": What kind of transaction was made: Income, Misc etc
#- Display header "Description": Displays transaction id and type of Transaction
#- Display header "Amount": Displays the amount of made transaction
#- Display header "Balance": Displays balance amount, after each transaction
#3. If User has more than 1 checking accounts, only one of the accounts can be Actived:
#- Display ON/OFF toggle button on each Checking account
#- Display transaction history for a particular checking account if it is Activated(ON)
#​
# #### SAVINGS ACCOUNT

  Feature: Validating Checking Account Page

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

   Scenario Outline,


     Verify if the "Search" box is functional
      When user clicks on the "Search" box
      Then user inputs <Category Type>
      Then user should see <Transaction>

     Examples:
       | Category Type |Transaction|
     |     inc    | Income     |
     |     mi    |Misc      |








