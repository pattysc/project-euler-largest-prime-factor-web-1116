# Enter your object-oriented solution here!
class LargestPrimeFactor
  def initialize(n)
    @n = n
  end

  def number
    index = @n-1

    while index > 0
      if @n%index  == 0
        if self.class.isprime?(index)
          return index
        end
      end
      index -= 1
    end
  end

  def self.isprime?(number)
    return false if number < 2;

    index = 2
    while index < number
      if (number % index) == 0
        return false
      end
      index += 1
    end

    return true
  end
end
