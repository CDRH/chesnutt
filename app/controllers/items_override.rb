ItemsController.class_eval do

  def works
    @title = "All Works"
    @header = true

    options = params.permit!.deep_dup
    options["f"] = ["category|Works"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "works_path"
    render_overridable "items", "works"
  end

  def works_stories
    @title = "Stories"

    options = params.permit!.deep_dup
    options["f"] = ["subcategory|Stories"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "works_stories_path"
    render_overridable "items", "works"
  end

  def works_essays
    @title = "Essays"

    options = params.permit!.deep_dup
    options["f"] = ["subcategory|Essays"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "works_essays_path"
    render_overridable "items", "works"
  end

  def works_novels
    @title = "Novels"
    options = params.permit!.deep_dup
    options["f"] = ["subcategory|Novel"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "works_novels_path"
    render_overridable "items", "works"
  end

  def works_poems
    @title = "Poems"

    options = params.permit!.deep_dup
    options["f"] = ["subcategory|Poems"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "works_poems_path"
    render_overridable "items", "works"
  end

  def works_collection
    @title = "Collections"

    options = params.permit!.deep_dup
    options["f"] = ["subcategory|Collection"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "works_collection_path"
    render_overridable "items", "works"
  end
  
  def works_other
    @title = "Other Works"

    options = params.permit!.deep_dup
    options["f"] = ["subcategory|Other Works"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "works_other_path"
    render_overridable "items", "works"
  end

  def manuscripts
    options = params.permit!.deep_dup
    options["f"] = ["category|Manuscripts"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "manuscripts_path"
    render_overridable "items", "manuscripts"
  end

  def correspondence
    options = params.permit!.deep_dup
    options["f"] = ["category|Correspondence"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "correspondence_path"
    render_overridable "items", "correspondence"
  end

  def reception_reviews
    options = params.permit!.deep_dup
    options["f"] = ["category|Reviews"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "reception_reviews_path"
    render_overridable "items", "reception_reviews"
  end

end