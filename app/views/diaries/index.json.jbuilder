json.array!(@diaries) do |diary|
  json.extract! diary, :title, :content
  json.url diary_url(diary, format: :json)
end
