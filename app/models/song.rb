# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  price      :decimal(, )
#  file_name  :string(255)
#  lyrics     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ActiveRecord::Base
  attr_accessible :file_name, :lyrics, :name, :price, :albums_attributes, :artists_attributes, :genres_attributes, :file_name

  mount_uploader :file_name, PhotoUploader

  has_and_belongs_to_many :albums
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :playlists
  has_many :purchases
  has_many :users, :through => :purchases

  accepts_nested_attributes_for :albums
  accepts_nested_attributes_for :artists
  accepts_nested_attributes_for :genres


end
