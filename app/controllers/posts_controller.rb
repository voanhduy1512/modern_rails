class PostsController < InheritedResources::Base
  has_scope :page, :default => 1
  has_scope :per, :default => 10

  def resource_params
    return [] if request.get?
    [params.require(:post).permit(:title, :description)]
  end
end
