class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :friends
  has_many :posts

  ##...Avatar Attachment...##
  has_one_attached :avatar 
  validates :birthdate, :presence => true
  validate :validate_age

  private
  def validate_age
    if birthdate.present? && birthdate > 13.years.ago.to_date
        errors.add(:birthdate, 'You should be over 13 years old.')
    end
  end



end
