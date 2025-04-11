# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do |i|
    User.create!(
        email: "user#{i}@example.com",
        first_name: "#{i}FirstName",
        last_name: "#{i}LastName"
    )
end

10.times do
    sender = User.all.sample
    receiver = User.where.not(id: sender.id).sample
    Chat.create!(
        sender_id: sender.id,
        receiver_id: receiver.id
    )
end

10.times do
    Message.create!(
        chat_id: Chat.all.sample.id,
        user_id: User.all.sample.id,
        body: "Text Message..."
    )
end
  