class User < ApplicationRecord
    # ASSOCIATIONS
    # A user can send many messages..
    has_many :messages

    # A user can be the sender of many chats.
    has_many :sent_chats, class_name: "Chat", foreign_key: "sender_id"

    # A user can be the receiver of many chats.
    has_many :received_chats, class_name: "Chat", foreign_key: "receiver_id"

    # A user can receive many messages through chats they are part of.
    has_many :received_messages, through: :received_chats, source: :messages

    # VALIDATIONS
    validates :email, presence: true, uniqueness: true
end