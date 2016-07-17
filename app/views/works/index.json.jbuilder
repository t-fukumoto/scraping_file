json.array!(@works) do |work|
  json.extract! work, :id, :image
  json.url work_url(work, format: :json)
end
