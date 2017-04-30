require "rails_helper"

RSpec.feature "create account" do
  scenario "with valid credentials" do

    visit new_user_path
    within(".create-account") do
      fill_in "Username", with: "nick"
      fill_in "Password", with: "password"
      click_button "Create Account"
    end

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Logged in as: nick")
  end
end
