20.times do
  user = User.create!( username: Faker::Internet.user_name,
      first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email,
      password: Faker::Internet.password)
end

20.times do
  user_id = rand(User.count)
  question = Question.create!( title: Faker::Company.catch_phrase+"?",
      content: Faker::Company.catch_phrase+"?", user_id: user_id)

  vote_count = rand(100)
  vote_count.times do
    question.votes.create!(value: 1)
  end
end
