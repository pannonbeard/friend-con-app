# == Schema Information
#
# Table name: gaming_year_libraries
#
#  id             :bigint           not null, primary key
#  gaming_year_id :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class GamingYearLibrary < ApplicationRecord
  belongs_to :gaming_year
  has_many :library_games, dependent: :destroy
end
