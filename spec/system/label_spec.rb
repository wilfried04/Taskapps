#bundle exec rspec spec/system/label_spec.rb

require 'rails_helper'
require 'selenium-webdriver'
RSpec.describe 'label Management Function', type: :system do
  before do
    @user =FactoryBot.create(:user)
    @admin_user = FactoryBot.create(:admin_user)

    @label1 = FactoryBot.create(:label1, user:@user)
    @label2 = FactoryBot.create(:label2, user:@user)

    FactoryBot.create(:task, user: @user)
    FactoryBot.create(:second_task, user: @user)

    visit new_session_path
    fill_in 'session[email]', with: @user.email
    fill_in 'session[password]', with: @user.password
    click_button 'Log in'
  end

  describe 'Label managing' do
    context 'If the label is not registered' do


    end

  end
end
