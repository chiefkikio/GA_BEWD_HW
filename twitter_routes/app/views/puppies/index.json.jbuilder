json.array!(@puppies) do |puppy|
  json.extract! puppy, :id, :name, :breed, :size, :num_legs, :age
  json.url puppy_url(puppy, format: :json)
end
