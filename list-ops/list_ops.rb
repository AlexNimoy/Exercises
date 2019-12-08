class ListOps
	# Implement basic list operations.
  class << self
    # @param list [Array]
    # @return [Integer]
    def arrays(list)
       fold(0, list) { |acc, _x| acc + 1  }
    end

    # @param list [Array]
    # @return [Array]
    def reverser(list)
      fold([], list) { |acc, x| acc.unshift(x)  }
    end

    # @param first [Array]
    # @param second [Array]
    # @return [Array]
    def concatter(first, second)
      fold(first, second) { |_acc, x| first << x  }
    end

    # @param list [Array]
    # @param block [Block]
    # @return [Array]
    def mapper(list, &block)
      fold([], list) { |acc, x| acc << block[x]  }
    end

    # @param list [Array]
    # @param block [Block]
    # @return [Array]
    def filterer(list, &block)
      fold([], list) { |acc, x| block[x] ? acc << x : acc  }
    end

    # @param list [Array]
    # @return [Integer]
    def sum_reducer(list)
      fold(0, list) { |acc, x| acc + x  }
    end

    # @param list [Array]
    # @return [Integer]
    def factorial_reducer(list)
      fold(1, list) { |acc, x| acc * x  }
    end

    private

    def fold(acc, list, &_block)
      list.each do |x|
        acc = yield acc, x
      end
      acc
    end
  end
end
