require "rails_helper"

RSpec.feature "Show user schedule page" do
    
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
        click_link "My Profile"
        click_button "student-sequence-button"
        expect(page).to have_css('div#student-schedule')
        click_button "student-schedule-button"
        expect(page).to have_css('div#student-schedule')
        click_button "student-record-button"
        expect(page).to have_css('div#student-schedule')
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