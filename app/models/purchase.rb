# == Schema Information
#
# Table name: purchases
#
#  id         :integer          not null, primary key
#  price_paid :decimal(, )
#  song_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Purchase < ActiveRecord::Base
  attr_accessible :price_paid, :song_id, :user_id

  belongs_to :song
  belongs_to :user
end
