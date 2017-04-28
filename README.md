# README

### issueOne: Create Wireframes for Most Important Views

Think about what you think the workflow should be on the site. Which of those views is most important? In addition to the home page wireframe, create wireframes the page immediately following your Log In and the next most important page for your application.

Examples might be: A users' profile page, a product page, an admin dashboard etc...
  
### issueTwo: Visitor can view items

Background: I have several items and each of them has a title, description, price, and image
1. As a visitor
1. When I visit "/items"
1. I can see all existing items

### issueThree: Browsing Items by category

Background: I have two categories with titles and each has two different items assigned
1. As a visitor
1. When I visit "/:CATEGORY_NAME"
1. I see all items assigned to that category

### issueFour: Adding items to the cart

Background: Items, and a user that is not logged in
1. As a visitor
1. When I visit any page with an item on it
1. I should see a link or button for "Add to Cart"
1. When I click "Add to cart" for that item
1. And I click a link or button to view cart
1. And my current path should be "/cart"
1. And I should see a small image, title, description and price for the item I just added
1. And there should be a "total" price for the cart that should be the sum of all items in the cart

### issueFive: Removing an item from my cart

Background: My cart has an item in it
1. As a visitor
1. When I visit "/cart"
1. And I click link "Remove"
1. Then my current page should be "/cart"
1. And I should see a message styled in green
1. And the message should say "Successfully removed SOME_ITEM from your cart."
1. And the title "SOME_ITEM" should be a link to that item in case the user wants to add it back
1. And I should not see the item listed in cart
  
### issueSix: Adjusting the quantity of an item in the cart
Background: My cart has an item in it
1. As a visitor
1. When I visit "/cart"
1. Then I should see my item with a quantity of 1
1. And when I increase the quantity
1. Then my current page should be '/cart'
1. And that item's quantity should reflect the increase
1. And the subtotal for that item should increase
1. And the total for the cart should match that increase
1. And when I decrease the quantity
1. Then my current page should be '/cart'
1. And that item's quantity should reflect the decrease
1. And the subtotal for that item should decrease
1. And the total for the cart should match that decrease

### issueSeven: Authenticated User
Background: Visitor not logged in views home page
1. When I visit "/"
1. Then I should see a link for "Login"
1. And when I click "Login"
1. And I should be on the "/login" page
1. I should see a place to insert my credentials to login
1. And I should see a link to "Create Account"
   
Background: Visitor creates an account
1. As a visitor 
1. When I visit "/login
1. And when I click link "Create Account"
1. And I fill in my desired credentials
1. And I submit my information
1. Then my current page should be "/dashboard"
1. And I should see a message in the navbar that says "Logged in as SOME_USER"
1. And I should see my profile information
1. And I should not see a link for "Login"
1. And I should see a link for "Logout"
    
### issueEight: Guest User
Background: Visitor with items in cart creates account
1. As a visitor when I have items in my cart
1. And when I visit "/cart"
1. I should not see an option to "Checkout"
1. I should see an option to "Login or Create Account to Checkout"
1. After I create an account
1. And I visit "/cart
1. Then I should see all of the data that was there when I was not logged in
1. When I click "Logout"
1. Then I should see see "Login"
1. And I should not see "Logout"
    
### issueNine: Viewing past orders
Background: An existing user that has multiple orders
1. As an Authenticated User
1. When I visit "/orders"
1. Then I should see all orders belonging to me and no other orders

### issueTen: Viwing a past order
Background: An existing user that has one previous order
1. As an authenticated user
1. When I visit "/orders"
1. Then I should see my past order
1. And I should see a link to view that order
1. And when I click that link
1. Then I should see each item that was order with the quantity and line-item subtotals
1. And I should see links to each item's show page
1. And I should see the current status of the order **(ordered, paid, cancelled, completed)**
1. And I should see the total price for the order
1. And I should see the date/time that the order was submitted
1. If the order was completed or cancelled
1. Then I should see a timestamp when the action took place
      
### issueEleven: Retired Items
Background: A user visits a retired items page
1. As a user if I visit an item page and that item has been retired
1. Then I should still be able to access the item page
1. And I should not be able to add the item to their cart
1. And I should see in place of the "Add to Cart" button or link - "Item Retired"

### issueTwelve: Checking out
Background: An existing user and a cart with items
1. As a visitor
1. When I add items to my cart
1. And I visit "/cart"
1. And I click "Login or Register to Checkout"
1. Then I should be required to login
1. When I am logged in
1. And I visit my cart
1. And when I click "Checkout"
1. Then the order should be placed
1. And my current page should be "/orders"
1. And I should see a message "Order was successfully placed"
1. And I should see the order I just placed in a table
