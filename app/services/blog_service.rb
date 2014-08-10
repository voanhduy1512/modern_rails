class BlogService
  attr_accessor :resource, :resource_params, :end_of_association_chain

  def initialize end_of_association_chain, resource, resource_params
    @resource = resource
    @resource_params = resource_params
    @end_of_association_chain = end_of_association_chain
  end

  def create
    blog = end_of_association_chain.create *resource_params
    # logger.info 'lol'
    # blog.publish :blog_created
  end

  def update
    resource.update_attributes *resource_params
  end

  def destroy
    resource.destroy
  end
end
