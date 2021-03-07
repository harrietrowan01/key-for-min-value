# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

 name_hash = {:blake => 500, :ashley => 2, :adam => 1}
 name_hash = {:blake => 10, :ahsley => 50, :adam => 17}
 name_hash = {}

 def key_for_min_value(name_hash)
    lowest_key = name_hash.reduce do |key, value|
        key.last > value.last ? value : key
    end
    if name_hash == {}
    lowest_key
    else
        lowest_key.first
    end
end