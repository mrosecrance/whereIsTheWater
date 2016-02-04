json.array!(@whitewater_runs) do |whitewater_run|
  json.extract! whitewater_run, :id, :description, :name, :whitewater_class
  json.url whitewater_run_url(whitewater_run, format: :json)
end
