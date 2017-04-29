require 'rails_helper'

RSpec.feature "Visit the homepage", type: :feature do
  scenario "as a visitor without an account" do

    visit root_path


  end
end
