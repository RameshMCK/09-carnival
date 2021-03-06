# == Schema Information
#
# Table name: cruises
#
#  id         :integer          not null, primary key
#  name       :string
#  duration   :integer          default(0), not null
#  base_cost  :decimal(, )      default(0.0)
#  dates      :date             default([]), is an Array
#  ship_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cruise < ApplicationRecord
    has_and_belongs_to_many :cities
    belongs_to :ship
    has_many :reservations
    has_many :users, through: :reservations

    
    validates :name, presence: true
    validates :name, uniqueness: true
end
