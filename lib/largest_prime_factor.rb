# Enter your procedural solution here!
def isprime?(number)
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


def largest_prime_factor(n)
  index = n-1

  while index > 0
    if n%index  == 0
      if isprime?(index)
        return index
      end
    end
    index -= 1
  end

end
