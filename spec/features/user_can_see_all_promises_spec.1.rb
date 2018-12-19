require "rails_helper"

RSpec.describe "promise index page" do
    context "they visit /promises" do
      scenario "they see all promises" do
        p_1, p_2, p_3 = create_list(:promise, 3)
        visit '/promises'
  
        expect(page).to have_content(p_1.body)
        expect(page).to have_content(p_1.status)
        expect(page).to have_content(p_2.body)
        expect(page).to have_content(p_2.status)
        expect(page).to have_content(p_3.body)
        expect(page).to have_content(p_3.status)
      end
    end
  end