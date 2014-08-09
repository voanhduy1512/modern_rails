class PostsController < InheritedResources::Base
  def resource_params
    [params.require(:post).permit(:title, :description)]
  end
end
