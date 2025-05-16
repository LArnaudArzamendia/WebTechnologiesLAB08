class Chat < ApplicationRecord
    # ASSOCIATIONS
    # A chat has many messages.
    has_many :messages

    # A chat belongs to a sender (user).
    belongs_to :sender, class_name: "User", foreign_key: "sender_id"

    # A chat belongs to a receiver (user).
    belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"

    # VALIDATIONS
    validates :sender_id, presence: true
    validates :receiver_id, presence: true
    validate :sender_and_receiver_diff

    private
    def sender_and_receiver_diff
        if sender_id == receiver_id
            errors.add(:receiver_id, "Must be different from sender.")
        end
    end
end