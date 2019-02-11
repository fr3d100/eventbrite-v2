class User < ApplicationRecord

	#Relationships
	has_many :attendances
	has_many :events, through: :attendances
	has_many :organized_events, foreign_key: 'author_id', class_name: "Event"

	#Validations
	validates :email, 
		format: { with: URI::MailTo::EMAIL_REGEXP },
		uniqueness: true,
		presence: true

	validates :first_name,
		presence: true

	validates :last_name,
		presence: true

end
