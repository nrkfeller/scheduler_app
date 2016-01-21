require 'rails_helper'

RSpec.feature "User sign in" do
    
    before do
        @john = Student.create(first_name: "john",
        last_name: "doe",
        student_id: 12345678,
        department: "Computer Engineering",
        email: "john@concordia.ca",
        password: "password")
    end
    
    scenario "with valid credentials" do
        visit "/"
        click_link "Sign In"
        fill_in "Email", with @john.email
        fill_in "Password", with @john.password
        click_button "Sign In"
    end
    
    scenario "with invalid credentials" do
        visit "/"
        click_link "Sign In"
        fill_in "Email", with @john.email
        fill_in "Password", with "potato123"
        click_button "Sign In"
        
        expect(page).to have_content("Incorrect password")
    end
    
end