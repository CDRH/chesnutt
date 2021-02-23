ItemsController.class_eval do

  def works
      options = params.permit!.deep_dup
      options["f"] = ["category|Works"]
      @res = $api.query(options)

      # render search preset with route information
      @route_path = "works_path"
      render_overridable "items", "works"

      @title = "All Works"
  end

  def works_stories
      options = params.permit!.deep_dup
      options["f"] = ["subcategory|Stories"]
      @res = $api.query(options)

      # render search preset with route information
      @route_path = "works_stories_path"
      render_overridable "items", "works"

      @title = "Stories"
  end

  def works_essays
      options = params.permit!.deep_dup
      options["f"] = ["subcategory|Essays"]
      @res = $api.query(options)

      # render search preset with route information
      @route_path = "works_essays_path"
      render_overridable "items", "works"
  end

  def works_novels
      options = params.permit!.deep_dup
      options["f"] = ["subcategory|Novel"]
      @res = $api.query(options)

      # render search preset with route information
      @route_path = "works_novels_path"
      render_overridable "items", "works"
  end

  def works_poems
      options = params.permit!.deep_dup
      options["f"] = ["subcategory|Poems"]
      @res = $api.query(options)

      # render search preset with route information
      @route_path = "works_poems_path"
      render_overridable "items", "works"
  end

  def works_collection
      options = params.permit!.deep_dup
      options["f"] = ["subcategory|Collection"]
      @res = $api.query(options)

      # render search preset with route information
      @route_path = "works_collection_path"
      render_overridable "items", "works"
  end
  
  def works_other
      options = params.permit!.deep_dup
      options["f"] = ["subcategory|Other Works"]
      @res = $api.query(options)

      # render search preset with route information
      @route_path = "works_other_path"
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