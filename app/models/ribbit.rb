class Ribbit < ActiveRecord::Base
	belongs_to :user
	default_scope order: "created_at DESC"

	validate :content , length: { maximum: 140 }
end
