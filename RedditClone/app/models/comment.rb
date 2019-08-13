# == Schema Information
#
# Table name: comments
#
#  id                :bigint           not null, primary key
#  user_id           :integer          not null
#  post_id           :integer          not null
#  body              :text             not null
#  parent_comment_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Comment < ApplicationRecord
  validates :user_id, :post_id, :body, :parent_comment_id, presence: true

  belongs_to :user
  belongs_to :post
  belongs_to :parent_comment,
    foreign_key: :parent_comment_id,
    class_name: :Comment

  has_many :child_comments,
    foreign_key: :parent_comment_id,
    class_name: :Comment
end
