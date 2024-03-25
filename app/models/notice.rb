# == Schema Information
#
# Table name: notices
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Notice < ApplicationRecord
  def header_text
    "#{title}<span class='updated-date'>#{updated_at.strftime('%m/%d/%Y')}</span>".html_safe
  end

  def header
    header_text
  end
end
