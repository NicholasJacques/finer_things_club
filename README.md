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
