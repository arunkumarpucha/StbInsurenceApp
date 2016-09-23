class Subscriber < ActiveRecord::Base
	belongs_to :lco
	
	has_many :addresses,as: :addressable,dependent: :destroy
	has_many :insurences,dependent: :destroy
end
