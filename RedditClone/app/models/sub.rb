# == Schema Information
#
# Table name: subs
#
#  id          :bigint           not null, primary key
#  user_id     :integer          not null
#  title       :string           not null
#  description :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Sub < ApplicationRecord
  validates :title, :description, :user_id, presence: true

  belongs_to :user
  has_many :comments
  has_many :post_subs, inverse_of: :sub, dependent: :destroy
  has_many :posts, through: :post_subs, source: :post
end
