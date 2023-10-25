require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test 'create' do
    task = create(:task, state: 'new_task')
    assert task.persisted?
  end
end
