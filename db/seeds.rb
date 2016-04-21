
20.times do
  question = Question.create!( title: Faker::Company.catch_phrase,
               content: Faker::Company.catch_phrase)

  vote_count = rand(100)
  vote_count.times do
    question.votes.create!(value: 1)
  end
end
