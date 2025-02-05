module ItemsHelper
  include Orchid::ItemsHelper

  def search_item_link(item)
    if item["category"]
      category = item["category"].downcase
    end
    category2 = item["category2"]
    item_id = item["identifier"][/^ccda\.(.+)$/, 1]
    path = "#"
    title_display = item["title"].present? ?
      item["title"] : t("search.results.item.no_title", default: "Untitled")
    sanitized = sanitize title_display

    if category2 == "Correspondence/Catalog"
      path = correspondence_catalog_path
    elsif item_id == "oth00001"
      path = resources_bibliography_path
    else
      path = prefix_path("item_path", id: item["identifier"])
    end

    link_to title_display, path
  end

  # formatting names to use in class names
  def format_name (input)
    if input != nil
      if input.include? "/"
        formatted_input = input.downcase.split('/').last.strip.downcase
      else
      formatted_input =  input.strip.downcase.gsub(/'/,'').gsub(' ','-')
      end
    end
    return formatted_input
  end
end
