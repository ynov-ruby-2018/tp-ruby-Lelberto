class Message < ApplicationRecord
  belongs_to :listing
  belongs_to :sender
end
