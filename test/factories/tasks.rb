FactoryBot.define do
  factory :task do
    name { 'MyString' }
    description { 'MyText' }
    author_id { 1 }
    assignee_id { 1 }
    state { 'MyString' }
    expired_at { '2021-03-15' }
  end
end
