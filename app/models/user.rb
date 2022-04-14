class User < ApplicationRecord
  # Include default users modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :professor
  has_one :student

  after_initialize :set_defaults

  private

  def set_defaults
    self.user_type ||= 'student'
  end
end
