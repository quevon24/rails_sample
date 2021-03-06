json.array!(@posts) do |post|
  json.(post, :created_at, :updated_at)
  json.title post.title
  json.body post.body
  json.category post.category.name
  json.category_id post.category_id
  json.url url_for(post)
  json.full_url polymorphic_url(post)
end