class Like < ApplicationRecord
  belongs_to :hall, counter_cache: :likes_count
  belongs_to :user

  validates :user_id, presence: true
  validates :hall_id, presence: true
  validates_uniqueness_of :hall_id, scope: :user_id

end
