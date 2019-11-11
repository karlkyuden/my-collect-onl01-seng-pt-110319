def my_collect(array)
  if block_given?
    index = 0
    while index < array.length do 
      yield(array[index])
      i += 1
    end
  else
    puts "It's empty"
  end
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end