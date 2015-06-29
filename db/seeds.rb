require 'faker'
 
# Create Posts
50.times do
 Post.create!(
   title:  Faker::Lorem.sentence,
   body:   Faker::Lorem.paragraph
 )
end
posts = Post.all


# Unique Post
post = Post.where(title: "Erlinda's unique post").first 
unless post 
Post.create!(
     title: "Erlinda's unique post",
     body: "Will this work? Let's hope so."
   )
end


# Create Comments
100.times do
 Comment.create!(
   post: posts.sample,
   body: Faker::Lorem.paragraph
 )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"