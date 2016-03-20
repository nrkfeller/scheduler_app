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
        click_link "Registration"
        click_button "auto-generate-schedule-button"
        click_button "preference-generate-schedule-button"
        click_button "current-course-offered-button"
        
        expect(page).to have_content('Day option')
        
        #fill_in "DataTables_Table_1_filter", with: "engr"
        expect(page).to have_css('div#current-course-offered-table')
        
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