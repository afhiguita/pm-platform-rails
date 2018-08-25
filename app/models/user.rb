class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  before_save :full_name
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of   :avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar

  private
  def full_name
    self.fullname = [firstname, lastname].join(' ')
  end
end
