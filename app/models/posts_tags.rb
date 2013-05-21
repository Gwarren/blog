# == Schema Information
#
# Table name: posts_tags
#
#  id      :integer          not null, primary key
#  post_id :integer
#  tag_id  :integer
#

class PostsTags < ActiveRecord::Base
  attr_accessible :post_id, :tag_id
end
