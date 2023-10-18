FactoryBot.define do
  factory :task do
    name
    description
    state { "initial" }
    expired_at
    author factory: :manager
    assignee factory: :manager
  end
end