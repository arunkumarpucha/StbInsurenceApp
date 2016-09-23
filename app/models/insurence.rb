class Insurence < ActiveRecord::Base
	belongs_to :subscriber
	has_many :stbs,dependent: :destroy
end
