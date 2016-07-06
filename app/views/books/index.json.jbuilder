json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :description, :cover, :programming_language, :edition, :publishing_date
  json.url book_url(book, format: :json)
end
