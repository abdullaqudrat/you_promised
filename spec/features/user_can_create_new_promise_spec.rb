require "rails_helper"

RSpec.describe "promise show page" do
    context "they visit /promises" do
      scenario "they see a specific promise" do
       
        visit "/promises/new"

        fill_in(:promise_body, :with => 'Pinky')
        click_button('Submit')
        
        expect(current_path).to eq("/promises/#{Promise.all.last.id}")
        expect(page).to have_content("Pinky")
        expect(page).to have_content("In Progress")
      end
    end
  end