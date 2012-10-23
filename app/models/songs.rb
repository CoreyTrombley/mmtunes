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

class Songs < ActiveRecord::Base
  attr_accessible :file_name, :lyrics, :name, :price
end
