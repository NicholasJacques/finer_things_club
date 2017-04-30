require 'rails_helper'

RSpec.feature "Visit the homepage", type: :feature do
  scenario "as a visitor without an account" do

    visit root_path

    within('.navbar') do
      expect(page).to have_content("Login")
      click_on "Login or create account"
    end

    expect(current_path.to eq(login_path))

    # expect page to have username form and password form
    # expect page to have "create account"
  end
end

# Background: Visitor not logged in views home page

# When I visit "/"
# Then I should see a link for "Login"
# And when I click "Login"
# And I should be on the "/login" page
# I should see a place to insert my credentials to login
# And I should see a link to "Create Account"