json.array!(@fabmoments) do |fabmoment|
  json.extract! fabmoment, :id, :title, :desc
  json.url fabmoment_url(fabmoment, format: :json)
end
