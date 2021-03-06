# Implementation of quicksort algorithm in Ruby

require 'benchmark_methods'

module Quicksort
  include BenchmarkMethods

  cbenchmark :run

  def self.quicksort array
    if array.length > 1

      pivote = array.sample
      less, equal, greater = [], [], []

      array.each do |value|
        if value < pivote
          less << value
        elsif value > pivote
          greater << value
        elsif value == pivote
          equal << value
        end
      end

      final_array = quicksort(less) + equal + quicksort(greater)
      return final_array
    else
      return array
    end
  end

  def self.run
    array = Array.new
    35.times { array << Random.rand(300) }
    result = quicksort array
    p result
  end

end

Quicksort.run
