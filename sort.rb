# Benchmark time execution for ruby methods

require 'benchmark_methods'

module Mod
  include BenchmarkMethods
  cbenchmark :sort

  def self.sort
    array = [8,7,5,1,2,6,89,56,45,36,87,19,71,82,99,10,54,85,96,4,0,24].sort
    p array
  end
end

Mod.sort
