require "rails_helper"
RSpec.feature "User send contact message" do
    
    before do
        @john = Student.create!(first_name: "John",
            last_name: "Doe",
            student_id: 11111133,
            department: "Computer Science",
            email: "john@concordia.ca",
            password: "password",
            password_confirmation: "password")
            
        
    end
    
    scenario "with valid credentials" do
        visit "/"
        click_link "Sign In"
        fill_in "Email", with: "john@concordia.ca"
        fill_in "Password", with: "password"
        click_button "Sign In"
        visit '/'
        
        click_link "Contact Us"
        
        fill_in "contact_name", with: "Test message send"
        
        click_button "send_message"
        
        expect(page).to have_content("Thank you for your message. We will contact you soon!")
    end
    
end