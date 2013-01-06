# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ActiveRecord::Base
  rolify
  belongs_to :user
  attr_accessible :title, :body, :user
  validates :title, :body, :presence => true 
end
