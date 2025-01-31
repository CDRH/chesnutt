ItemsController.class_eval do
  
  before_action :set_page_facets

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
    options["f"] = ["category2|Works/Stories"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "works_stories_path"
    render_overridable "items", "works"
  end

  def works_essays
    @title = "Essays"

    options = params.permit!.deep_dup
    options["f"] = ["category2|Works/Essays"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "works_essays_path"
    render_overridable "items", "works"
  end

  def works_novels
    @title = "Novels"
    options = params.permit!.deep_dup
    options["f"] = ["category2|Works/Novels"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "works_novels_path"
    render_overridable "items", "works"
  end

  def works_poems
    @title = "Poems"

    options = params.permit!.deep_dup
    options["f"] = ["category2|Works/Poems"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "works_poems_path"
    render_overridable "items", "works"
  end

  def works_collection
    @title = "Collections"

    options = params.permit!.deep_dup
    options["f"] = ["category2|Works/Collections"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "works_collection_path"
    render_overridable "items", "works"
  end
  
  def works_other
    @title = "Other Works"

    options = params.permit!.deep_dup
    options["f"] = ["category2|Works/Other Works"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "works_other_path"
    render_overridable "items", "works"
  end

  def works_reviews
    @title = "Reviews by Chesnutt"

    options = params.permit!.deep_dup
    options["f"] = ["category2|Works/Reviews"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "works_reviews_path"
    render_overridable "items", "works"
  end

  def manuscripts
    @title = "Manuscripts"

    options = params.permit!.deep_dup
    options["f"] = ["category|Manuscripts"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "manuscripts_path"
    render_overridable "items", "manuscripts"
  end

  def correspondence
    @title = "Correspondence"

    params["sort"] ||= ["date|asc"] # Assigns user's chosen sort to both UI and API request or uses different default
    options = params.permit!.deep_dup # copying all of the search facets, sort, etc from the search query string
    options["f"] = ["category|Correspondence"] # Sets the API request category so not all items
    
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "correspondence_path"
    render_overridable "items", "correspondence"
  end

  def correspondence_catalog
    @title = "Correspondence Catalog"

    id = "correspondence_catalog"
    @res = $api.get_item_by_id(id).first
    if @res
      url = @res["uri_html"]
      @html = Net::HTTP.get(URI.parse(url)) if url
      @title = @res["title"]
      render_overridable "items","correspondence_catalog"
    else
      @title = "Item #{params["id"]} not found"
      render "items/show_not_found", status: 404
    end

  end

  def reception_reviews
    @title = "Reviews"

    params["sort"] ||= ["date|asc"]
    options = params.permit!.deep_dup
    options["f"] = ["category2|Reception/Reviews"]
    @res = $api.query(options)

    # render search preset with route information
    @route_path = "reception_reviews_path"
    render_overridable "items", "reception_reviews"
  end

  def scholarship
    @title = "Scholarship"
    @header = true
  end

  def about
    @title = "About"
    @header = true
  end

  def resources
      @title = "Resources"
  end

  def resources_bibliography
    @title = "Bibliography"

    id = "ccda.oth00001"
    @res = $api.get_item_by_id(id).first
    if @res
      url = @res["uri_html"]
      @html = Net::HTTP.get(URI.parse(url)) if url
      @title = @res["title"]
      #render "items/page"
      render_overridable("items","show")
    else
      @title = "Item #{params["id"]} not found"
      render "items/show_not_found", status: 404
    end
  end

end
