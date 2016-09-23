class Lco < ActiveRecord::Base
	has_many :subscribers,dependent: :destroy
	has_many :addresses,as: :addressable,dependent: :destroy
end
