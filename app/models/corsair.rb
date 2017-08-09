class Corsair < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :ragots
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
