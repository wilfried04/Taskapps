#bundle exec rspec spec/system/user_spec.rb

require 'rails_helper'
RSpec.describe 'User registration, login and logout functions', type: :system do
  before do
    @user =FactoryBot.create(:user)
  end

  describe 'Testing User Registration' do
    context 'If the user has no data and is not logged in' do

      it 'Test to jump to the login screen when you are not logged in' do
        visit tasks_path
        expect(current_path).to eq new_session_path
      end
    end
  end

  describe 'Testing the Session Functionality' do
    context 'If the user has no data and is not logged in' do
      it 'Testing Session Logins' do
        visit new_session_path
        fill_in 'session[email]', with: @user.email
        fill_in 'session[password]', with: @user.password
        click_button 'Log in'
        expect(page).to have_content 'user@gmail.com'
      end
    end
  end

  
end
