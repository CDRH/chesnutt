ItemsController.class_eval do

  def works
    # query to return only souvenir documents
      options = params.permit!.deep_dup
      options["f"] = ["category|Works"]
      @res = $api.query(options)

      # render search preset with route information
      @route_path = "works_path"
      render_overridable "items", "works"
  end

  def manuscripts
    # query to return only souvenir documents
      options = params.permit!.deep_dup
      options["f"] = ["category|Manuscripts"]
      @res = $api.query(options)

      # render search preset with route information
      @route_path = "manuscripts_path"
      render_overridable "items", "manuscripts"
  end

  def correspondence
    # query to return only souvenir documents
      options = params.permit!.deep_dup
      options["f"] = ["category|Correspondence"]
      @res = $api.query(options)

      # render search preset with route information
      @route_path = "correspondence_path"
      render_overridable "items", "correspondence"
  end

  def reception_reviews
    # query to return only souvenir documents
      options = params.permit!.deep_dup
      options["f"] = ["category|Reviews"]
      @res = $api.query(options)

      # render search preset with route information
      @route_path = "reception_reviews_path"
      render_overridable "items", "reception_reviews"
  end

end