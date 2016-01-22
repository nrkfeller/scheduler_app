require "rails_helper"

RSpec.feature "Show user profile page" do
    
    before do
        @john = Student.create(first_name: "john",
        last_name: "doe",
        student_id: 12345678,
        department: "Computer Engineering",
        email: "john@concordia.ca",
        password: "password")
    end
    
    scenario "when signed in" do
        visit "/"
        click_link "Sign In"
        fill_in "Email", with @john.email
        fill_in "Password", with @john.password
        click_button "Sign In"
        
        
        visit "/"
        click_link "My Profile"
        expect(page).to have_content(@john.first_name)
        expect(page).to have_content(@john.last_name)
        expect(page).to have_content(@john.department)
        expect(page).to have_content(@john.email)
    end
end