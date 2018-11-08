def bubble_sort ary
	bubble_sort_by = Proc.new do |x, y| 
		case x <=> y
			when 1
				ary[(ary.index(x)+1)] = x
				ary[(ary.index(x))] = y
			end
		count > 0 ? y = x : y = y
	end

	(ary.length-1).times do 
		ary.reduce(&bubble_sort_by)
	end
	puts ary.to_s
end

bubble_sort([4,3,78,2,0,2])