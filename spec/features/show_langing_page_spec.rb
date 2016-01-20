require "rails_helper"
RSpec.feature "Creating Home Page" do
    scenario do
        visit '/'
        expect(page).to have_link('Sign Up')
        expect(page).to have_link('Sign In')
        expect(page).to have_link('My Sequence')
        expect(page).to have_link('My Profile')
        expect(page).to have_link('My Schedule')
    end
end