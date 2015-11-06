require_relative 'factors'

factor_calc = BBC::FactorCalculator.new
input_array = [10, 5, 2, 20]
puts factor_calc.find_factors(input_array)
puts factor_calc.find_factors_with_cache(input_array)
puts factor_calc.find_factors_with_cache(input_array)
puts factor_calc.find_factors_with_cache([10, 5, 13, 55, 60, 2, 20])
puts factor_calc.find_reverse_factors_with_cache(input_array)
puts factor_calc.find_reverse_factors_with_cache(input_array)
