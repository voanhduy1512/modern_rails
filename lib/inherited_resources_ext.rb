module InheritedResourcesExt

  def create!(options={}, &block)
    if options[:service]
      service_class = options.delete(:service)
      method = options.delete(:method) || :create
      object = service_class.new(end_of_association_chain, nil, resource_params).send method
      set_resource_ivar object
      if object
        options[:location] ||= smart_resource_url
      end
      respond_with_dual_blocks(object, options, &block)
    else
      base
    end
  end

  def update!(options={}, &block)
    if options[:service]
      service_class = options.delete(:service)
      method = options.delete(:method) || :update
      object = service.new(end_of_association_chain, resource, resource_params).send method
      if object
        options[:location] ||= smart_resource_url
      end
      respond_with_dual_blocks(object, options, &block)
    else
      base
    end
  end

  def destroy!(options={}, &block)
    if options[:service]
      service_class = options.delete(:service)
      method = options.delete(:method) || :destroy
      options[:location] ||= smart_collection_url
      object = service.new(end_of_association_chain, resource, resource_params).send method
      respond_with_dual_blocks(object, options, &block)
    else
      base
    end
  end
end
