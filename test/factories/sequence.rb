FactoryBot.define do
  sequence :string, aliases:
  [
    :first_name,
    :last_name,
    :password,
    :name,
    :description,
    :state,
  ] do |n|
    "string#{n}"
  end

  sequence :email do |n|
    "user#{n}@example.com"
  end

  sequence :avatar do |n|
    "avatar#{n}.jpg"
  end

  sequence :expired_at do |n|
    Time.zone.today + n.days
  end
end
