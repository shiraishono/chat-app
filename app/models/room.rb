class Room < ApplicationRecord
  # 中略
  has_many :messages
end