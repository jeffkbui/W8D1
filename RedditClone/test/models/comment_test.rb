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

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
