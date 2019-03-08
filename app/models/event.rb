# == Schema Information
#
# Table name: events
#
#  id          :bigint(8)        not null, primary key
#  name        :string           not null
#  description :string           not null
#  city        :string           not null
#  state       :string           not null
#  venue       :string           not null
#  date        :datetime         not null
#

class Event < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :venue, presence: true
  validates :date, presence: true
end
