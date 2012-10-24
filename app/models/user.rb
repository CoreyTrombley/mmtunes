# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  photo           :string(255)
#  age             :integer
#  gender          :string(255)
#  balance         :decimal(, )
#  is_admin        :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :age, :balance, :email, :first_name, :gender, :last_name, :password, :password_confirmation, :photo
  mount_uploader :photo, PhotoUploader
  has_secure_password
  validates_presence_of :password, :on => :create

  has_many :purchases
  has_many :songs, :through => :purchases
  has_many :playlists
end
