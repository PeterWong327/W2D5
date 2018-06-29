#my_hash_map.rb 

class MaxIntSet
  
  def initialize(max)
    @max = max 
    @store = Array.new(max+1) { false }
  end 
  
  def insert(el)
    raise "#{el} cannot be negative" if el < 0 
    raise "#{el} is greater than max" if el > max
    @store[el] = true 
  end 
  
  def remove(el)
    raise "#{el} cannot be negative" if el < 0 
    raise "#{el} is greater than max" if el > max
    @store[el] = false 
  end 
  
  def include?(el)
    raise "#{el} cannot be negative" if el < 0 
    raise "#{el} is greater than max" if el > max
    @store[el] == true 
  end 
  
  attr_reader :max, :store
end 

