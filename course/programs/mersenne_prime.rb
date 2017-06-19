#!/usr/bin/ruby -w

def soe(n , prime)
	p = 2
	while p * p <= n
		if prime[p] == true
			i = p * 2
			while i <= n
				prime[i] = false
				i = i + p
			end
		end
		p = p + 1
	end
	return prime
end


def mp(n)
	prime = Array.new(n+1,"true")
	prime = soe(n,prime)
	k = 2
	while (1<<k)-1 <= n
		num = (1<<k)-1
		if prime[num]
			puts num
		end
		k = k + 1
	end
end



puts "Enter the number"

n = gets.chomp.to_i

puts "Mersenne Primes less than #{n} are"

mp(n)