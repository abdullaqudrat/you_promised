require "rails_helper"

RSpec.describe "promise show page" do
    context "they visit /promises/:id" do
      scenario "they see a specific promise" do
        p_1, p_2, p_3 = create_list(:promise, 3)
       
        visit "/promises/#{p_1.id}"
  
        expect(page).to have_content(p_1.body)
        expect(page).to have_content(p_1.status)
        expect(page).to_not have_content(p_2.body)
      end
    end
  end