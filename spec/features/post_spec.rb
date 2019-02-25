require 'rails_helper'

describe 'navigate' do
  describe 'index' do
    it "can successfully be reached" do
      visit posts_path
      expect(page.status_code).to eq(200)
    end
    it "has a title of posts" do
      visit posts_path
      expect(page).to have_content(/Post/)
    end
  end
  describe "creation" do
    before do
      visit new_post_path
    end

    it "it has a new form that can be reached" do
      visit new_post_path
      expect(page.status_code).to eq(200)
    end
    it "can be created from new form page" do
      fill_in 'posts[date]', with: Date.today
      fill_in 'posts[rationale]', with: 'Something'
      click_on 'save'
      expect(page).to have_content('Something')
    end
  end
end
