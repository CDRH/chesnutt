module ItemsHelper
  include Orchid::ItemsHelper

  def search_item_link(item)
    category = item["category"].downcase
    subcategory = item["subcategory"]
    item_id = item["identifier"][/^ccda\.(.+)$/, 1]
    path = "#"
    title_display = item["title"].present? ?
      item["title"] : t("search.results.item.no_title", default: "Untitled")
    sanitized = sanitize title_display

    if subcategory == "Correspondence/Catalog"
      path = correspondence_catalog_path
    elsif item_id == "oth00001"
      path = resources_bibliography_path
    else
      path = prefix_path("item_path", id: item["identifier"])
    end

    link_to title_display, path
  end
end
