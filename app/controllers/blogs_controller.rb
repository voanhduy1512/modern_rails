class BlogsController < InheritedResources::Base
  include InheritedResourcesExt

  assign_params :title, :author
  has_scope :page, :default => 1
  has_scope :per, :default => 10


  def create
    create!(service: BlogService, method: :create)
  end

  def update
    update!(service: BlogService, method: :update)
  end

  def destroy
    destroy!(service: BlogService, method: :destroy)
  end
end
