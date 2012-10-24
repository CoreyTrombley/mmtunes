# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  photo      :string(255)
#  release    :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ActiveRecord::Base
  attr_accessible :name, :photo, :release

  mount_uploader :photo, PhotoUploader
  
  has_and_belongs_to_many :songs
end
