require "rails_helper"
RSpec.feature "Users signup" do
    scenario "with valid credentials" do
        visit "/"
        click_link "Sign Up"
        fill_in "First name", with: "John"
        fill_in "Last name", with: "Doe"
        fill_in "Student ID", with: "25980925"
        fill_in "Email", with: "user@example.com"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_button "Sign Up"
        
        visit "/"
        expect(page).to have_content("John Doe")
    end
    
    scenario "with invalid credentials" do
        visit "/"
        click_link "Sign Up"
        fill_in "First name", with: ""
        fill_in "Last name", with: ""
        fill_in "Student ID", with: "5980925"
        fill_in "Email", with: "user@example@com"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password1"
        click_button "Sign up"
        expect(page).to have_content("First name can't be blank")
        expect(page).to have_content("Last name can't be blank")
        expect(page).to have_content("Student ID must be exactly 8 digits")
        expect(page).to have_content("Email address must be format: john@example.com")
        expect(page).to have_content("Password does not match")
        
        visit "/"
        expect(page).not_to have_content("John Doe")
    end
end