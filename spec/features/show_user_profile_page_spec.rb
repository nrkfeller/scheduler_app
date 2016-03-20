require "rails_helper"

RSpec.feature "Show user profile page" do
    
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
        expect(page).to have_content(@john.first_name.upcase)
        expect(page).to have_content(@john.last_name.upcase)
        expect(page).to have_content(@john.department)
        expect(page).to have_content(@john.email)
    end
end