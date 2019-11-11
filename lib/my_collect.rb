def my_collect(array)
  if block_given?
    index = 0

    while index < array.length do 
      newArray << yield(array[index])
      index += 1
    end
  else
    puts "It's empty"
  end
end
    newArray = []
array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  newArray << name.split(" ").first
  
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  newArray << lang.upcase
end