module BBC
  class FactorCalculator

    def initialize
      @cache_hash = {}
      @reverse_cache_hash = {}
    end

    def find_factors(input_array)
      output_hash = {}
      input_array.each do |number|
        output_hash[number] = []

        input_array.each do |num|
          if (number % num == 0) && (number != num)
            output_hash[number] << num
          end
        end
      end

      output_hash
    end

    def find_factors_with_cache(input_array)
      output_hash = {}
      input_array.each do |number|
        output_hash[number] = []
        @cache_hash[number] = [] if @cache_hash[number].nil?

        input_array.each do |num|
          if @cache_hash[number].include?(num)
            output_hash[number] << num
          elsif (number % num == 0) && (number != num)
            output_hash[number] << num
            @cache_hash[number] << num
          end
        end
      end
      output_hash
    end

    def find_reverse_factors_with_cache(input_array)
      output_hash = {}
      input_array.each do |number|
        output_hash[number] = []
        @reverse_cache_hash[number] = [] if @reverse_cache_hash[number].nil?

        input_array.each do |num|
          if @reverse_cache_hash[number].include?(num)
            output_hash[number] << num
          elsif (num % number == 0) && (number != num)
            output_hash[number] << num
            @reverse_cache_hash[number] << num
          end
        end
      end
      output_hash
    end
  end
end
