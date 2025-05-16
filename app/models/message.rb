class Message < ApplicationRecord
    # ASSOCIATIONS
    # A message belongs to a chat.
    belongs_to :chat

    # A message belongs to a user (sender).
    belongs_to :user

    # VALIDATIONS
    validates :body, presence: true
    validate :user_participant_of_chat

    private
    def user_participant_of_chat
        return if chat.nil? || user.nil?
        unless [chat.sender_id, chat.receiver_id].include?(user_id)
            errors.add(:user_id, "Must be a participant in the chat (sender/receiver).")
        end
    end
end