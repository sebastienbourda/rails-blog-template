require 'faker'

puts "Cleaning database"

Post.destroy_all

puts "Database cleaned"

# Create 10 fun and engaging posts with titles, content, slugs, and random statuses

titles = [
  "Rails Magic: Unveiling the Mystery Behind the Framework",
  "From Zero to Hero: Building Your First App with Ruby on Rails",
  "The Secret Life of ActiveRecord: Untold Rails Tales",
  "Rails Adventures: Exploring Uncharted Features",
  "Confessions of a Rails Router: Navigating the Web Seas",
  "The Art of Code: Crafting Beautiful Views in Rails",
  "When Rails Met David: A Love Story in Code",
  "Rails in the Wild: Surprising Stories from the Framework Frontlines",
  "Breaking Bad Code: Refactoring the Rails Way",
  "Laughing with Rails: The Lighter Side of Web Development"
]

puts "Creating 10 fun posts"

titles.each do |title|
  content = 4.times.map { Faker::Lorem.paragraph(sentence_count: 5) }.join("\n\n")
  slug = title.parameterize
  status = ["draft", "published"].sample

  Post.create(
    title: title,
    content: content,
    slug: slug,
    status: status
  )

  puts "Post created: #{title}"
end
