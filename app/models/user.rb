class User < ApplicationRecord
	has_secure_password
	has_many :products
	validates_length_of :password, :in => 1..10, :allow_nil => false, :allow_blank => false
	validates_length_of :name, :in => 3..10, :allow_nil => false, :allow_blank => false
	validates_format_of :name, :with => /\A[-A-Za-z0-9]+\Z/
end
