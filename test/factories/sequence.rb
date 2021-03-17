FactoryBot.define do
  sequence :string, aliases: [:first_name, :last_name, :password, :name] do |n|
    "string#{n}"
  end

  sequence :email do |n|
    "person#{n}@example.com"
  end

  sequence :avatar do |n|
    "path/to/avatar#{n}.jpg"
  end

  sequence :description do |n|
    "description #{n}"
  end

  sequence :expired_at do |n|
    n.days.after
  end
end
