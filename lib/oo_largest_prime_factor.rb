# Enter your object-oriented solution here!
class LargestPrimeFactor
    attr_reader :number

    def initialize(limit)
        @number = findprime(limit)
    end

    def findprime(limit)
        prime = limit
        (2...Math.sqrt(limit).to_i).each do |i|
            break if prime <= 1
            prime /= i while(prime > i && prime%i == 0)
        end
        prime
    end
end