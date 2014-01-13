json.array!(@testimonies) do |testimony|
  json.extract! testimony, :id, :person, :occupation, :content
  json.url testimony_url(testimony, format: :json)
end
