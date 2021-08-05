GeneralController.class_eval do

  def about
    @title = "About"
  end

  def about_history
    @title = "Project History"
  end

  def about_editorial_policy
    @title = "Editorial Policy"
  end

  def about_encoding_guidelines
    @title = "Encoding Guidelines"
  end

  def about_use_statement
    @title = "Use Statement"
  end

  def about_people
    @title = "People"
  end

  def about_statement_of_purpose
    @title = "Statement of Purpose"
  end

  def biographical_sketch
    @title = "Biographical Sketch"
  end

  def index
    render_overridable("general", "index")
  end
end
