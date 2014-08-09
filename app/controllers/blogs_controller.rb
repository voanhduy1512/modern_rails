class BlogsController < InheritedResources::Base
  def resource_params
    return [] if request.get?
    [params.require(:blog).permit(:title, :author)]
  end
end
