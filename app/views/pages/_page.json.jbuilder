json.extract! page, :id, :name, :url, :content, :images, :publish_at, :created_at, :updated_at
json.url page_url(page, format: :json)
