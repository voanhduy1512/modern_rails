class PostsController < InheritedResources::Base
  assign_params :title, :description
  has_scope :page, :default => 1
  has_scope :per, :default => 10
end
