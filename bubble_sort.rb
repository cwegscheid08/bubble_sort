def bubble_sort ary
	(ary.length-1).times do 
		ary.reduce do |x, y|
			count = x <=> y
			case count
				when 1
					ary[(ary.index(x)+1)] = x
					ary[(ary.index(x))] = y
				end
			count > 0 ? y = x : y = y
		end
	end
	puts ary.to_s
end


words = ["hey", "hi", "hello"]
num = []
rand(1..20).times { num << rand(1..100) }


bubble_sort([4,3,78,2,0,2])
bubble_sort(["hey", "hi", "hello"])
bubble_sort(num)


def bubble_sort_by ary 
	puts ary.to_s
	i = 0
	unless i == (ary.length*2)-2 
		ary.inject do |l, r| 
			(yield(l,r) > 0 ? (ary[i], ary[i+1] = ary[i+1], ary[i]) : "")
			i += 1 
			r 
		end
	end
	puts ary.to_s
end


bubble_sort_by(["hi", "hello", "hey"]) do |left,right|
	left.length - right.length
end