class Hall < ApplicationRecord
  def self.search(search) 
    if search
      where(['name LIKE ?', "%#{search}%"])
    else
      all
    end
  end
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user
  def like_user(user_id)
    likes.find_by(user_id: user_id)
   end
end
