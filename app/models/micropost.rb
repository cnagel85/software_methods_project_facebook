class Micropost < ActiveRecord::Base
	attr_accessible :content
  	belongs_to :user, :wall

  	validates :user_id, presence: true
  	validates :content, presence: true, length: { maximum: 400 }

  	default_scope order: 'microposts.created_at DESC'
end
