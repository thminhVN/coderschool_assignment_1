json.array!(@menu_items) do |menu_item|
  json.extract! menu_item, :id, :name, :description, :price, :img_url, :views_count, :section_id
  json.url menu_item_url(menu_item, format: :json)
end
