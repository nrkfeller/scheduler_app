require "rails_helper"
RSpec.feature "Users signup" do
    scenario "with valid credentials" do
        visit "/"
        click_link "Sign Up"
        fill_in "First Name", with: "John"
        fill_in "Last Name", with: "Doe"
        fill_in "Student ID", with: "25980925"
        fill_in "Email", with: "user@concordia.ca"
        fill_in "Password", with: "password"
        fill_in "Confirm Password", with: "password"
        click_button "Create Account"
        
        visit "/"
        expect(page).to have_content("Signed in as John")
    end
    
    scenario "with invalid credentials" do
        visit "/"
        click_link "Sign Up"
        fill_in "First Name", with: ""
        fill_in "Last Name", with: ""
        fill_in "Student ID", with: "5980925"
        fill_in "Email", with: "user@example@com"
        fill_in "Password", with: "pass"
        fill_in "Confirm Password", with: "pass1"
        click_button "Create Account"
        expect(page).to have_content("First Name can't be blank")
        expect(page).to have_content("Last Name can't be blank")
        expect(page).to have_content("Student ID is invalid")
        expect(page).to have_content("Email is invalid")
        expect(page).to have_content("Password is too short")
        expect(page).to have_content("Confirm Password doesn't match Password")
        
        visit "/"
        expect(page).not_to have_content("John Doe")
    end
end