# == Schema Information
#
# Table name: playlists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Playlist < ActiveRecord::Base
  attr_accessible :name

  
  has_and_belongs_to_many :songs
  belongs_to :users
end
