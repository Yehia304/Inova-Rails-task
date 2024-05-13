# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# generate 20 users
unless User.count != 0
    p "======================================================"
    p "Seeding users"
    20.times do
        user = User.create!(
            name: Faker::Name.name,
        )
        p "======================================================"
        p "Creating user #{user.name}"
    end
end

unless Post.count != 0
    p "======================================================"
    p "Seeding posts"
    50000.times do
        post = Post.create!(
            title: Faker::Lorem.sentence(word_count: 3),
            body: Faker::Lorem.sentence(word_count: 10),
            user_id: User.all.sample.id
        )
        p "======================================================"
        p "Creating post #{post.title}"
    end
end

unless Review.count != 0
    p "======================================================"
    p "Seeding reviews"
    (1..1000).each do |i|
        Review.create!(
            review: Faker::Lorem.sentence(word_count: 3),
            post_id: Post.all.sample.id,
            user_id: User.all.sample.id
        )
        p "======================================================"
        p "Creating review number #{i}"
    end
end