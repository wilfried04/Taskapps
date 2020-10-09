
require 'rails_helper'

RSpec.describe 'Task model function', type: :model do
  describe 'Validation test' do
    context 'If the task title is empty' do
      it 'It is hard to Validation' do
        task = Task.new(content: 'Failure test')
        expect(task).not_to be_valid
      end
    end
    context "if the task details are empty" do
      it 'validation is caught' do
        task =Task.new(name:'task')
        expect(task).not_to be_valid
      end
    end
  end
  context "if the task details are empty" do
    it 'validation is caught' do
      task =Task.new(name:'task', content:'content', end_time:'2020-10-4')
      expect(task).to be_valid
    end
  end
end