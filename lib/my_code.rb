# Your Code Here
def map(thing)
  n_array = []
  i = 0
  while i < thing.length do
    n_array.push(yield(thing[i]))
    i += 1
  end
  p n_array
end

def reduce(array , sp=nil)
  if sp
    i=0
    total = sp
  else
    i = 1
    total = array[0]
  end
  while i < array.length
    total = yield(total,array[i])
    i += 1
  end
  total
end
