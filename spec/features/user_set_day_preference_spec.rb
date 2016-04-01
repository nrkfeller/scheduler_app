require 'rails_helper'

RSpec.feature "User sign in" do
    
    before do
        @john = Student.create!(first_name: "John",
            last_name: "doe",
            student_id: 11111133,
            department: "Computer Science",
            email: "john@concordia.ca",
            password: "password",
            password_confirmation: "password")
    end
    
        scenario "when signed in" do
        visit "/"
        click_link "Sign In"
        fill_in "Email", with: "john@concordia.ca"
        fill_in "Password", with: "password"
        click_button "Sign In"
        
        visit "/"
        expect(page).to have_content("Signed in as John")
        
        click_link "Registration"
        expect(page).to have_content("Day option")
        expect(page).to have_select('weekday-selection', :options=> ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"])

    end
    
    
        scenario "when not signed in " do
        visit "/"
        click_link "My Profile"
        
        expect(page).to have_content("Sign in")
        fill_in "Email", with: "john@concordia.ca"
        fill_in "Password", with: "password"
        click_button "Sign In"
    end
end