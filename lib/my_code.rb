# Your Code Here
def map(array)
new_array = []
counter = 0 
while counter < array.length do 
  new_array.push(yield(array[counter]))
counter += 1 
end
new_array
end







def reduce(array, starting_point = nil )
if starting_point
  total = starting_point
  i=0 
else
  total = array[0]
  i = 1 
end
while i < array.length do
total = yield(total,array[i])
i += 1 
end
total
end