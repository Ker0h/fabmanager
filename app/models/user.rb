class User < ActiveRecord::Base
  attr_accessor :avatar, :avatar_cache, :remove_avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  scope :excluding_archived, lambda { where(archived_at: nil)}
  has_many :fabmoments
  has_many :comments

  validates_integrity_of  :avatar
  validates_processing_of :avatar
  validates_presence_of :username

  def archive
    self.update(archived_at: Time.now)
  end

  def active_for_authentication?
    super && archived_at.nil?
  end
  def inactive_message
    archived_at.nil? ? super : :archived
  end
end
