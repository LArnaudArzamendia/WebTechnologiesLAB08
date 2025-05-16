class Message < ApplicationRecord
    # ASSOCIATIONS
    # A message belongs to a chat.
    belongs_to :chat

    # A message belongs to a user (sender).
    belongs_to :user

    # VALIDATIONS
    validates :body, presence: true
end