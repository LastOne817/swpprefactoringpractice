class PrimeGetter
    attr_accessor :num, :primes
    def initialize(num)
        unless num.is_a? Integer
            puts "n must be an integer."
            return nil
        end
        if num < 0
            puts "n must be greater than 0."
            return nil
        end
        @num = num
        @primes = [2]
    end

    def get_prime
        for i in 3..@num
            is_prime = true
            @primes.each do |prime|
                if is_devisable(i, prime)
                    is_prime = false
                    break
                elsif ( prime > Math.sqrt(i))
                    break
                end
            end
            if is_prime
                @primes.push(i)
            end
        end 
        return @primes 
    end

    def is_devisable(dividend, devider)
        dividend % devider == 0
    end
end

if __FILE__ == $0
    primeGetter = PrimeGetter.new(ARGV[0].to_i)
    puts primeGetter.get_prime
end

# Get prime numbers not upper than maximum number
#
# pseudo code

# if maximum number is not a integer or lower than 1
#   print error message and return nil
#
# start with prime numbers = [2] and number = 3
# while (number is not upper than maximum number)
#   if number is prime number
#     add the number to prime numbers
#   increase the number by 1
# return prime numbers
