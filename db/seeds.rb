100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale context")
end

puts "One Hundred posts have been created."
