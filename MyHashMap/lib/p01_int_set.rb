require 'byebug'

class MaxIntSet
  
  def initialize(max)
    @max = max 
    @store = Array.new(max+1) { false }
  end

  def insert(num)
    if is_valid?(num)
      @store[num] = true 
    else
      raise "Out of bounds"
    end 
  end

  def remove(num)
    if is_valid?(num)
      @store[num] = false 
    else
      raise "Out of bounds"
    end 
  end

  def include?(num)
      @store[num] == true 
  end

  private

  def is_valid?(num)
    return false if num < 0 || num > @max
    true
  end

  def validate!(num)
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    # idx = num % num_buckets

    @store[num % num_buckets] << num 
  end

  def remove(num)
    if @store[num % num_buckets].include?(num)
      @store[num % num_buckets].delete(num)
    end 
  end

  def include?(num)
    @store[num % num_buckets].any? { |el| el == num } 
  end
  attr_accessor :store 
  private

  def [](num)
    @store[num]
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

test = IntSet.new
p test.insert(50)

###################

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end