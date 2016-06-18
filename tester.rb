require_relative "linked_list"

list = LinkedList.new
puts "List demo"
puts "---------"
list.append("t")
list.append(4)
list.append(1)
list.append("g")
list.append("test")
puts("Append test: #{list}")
list.prepend("start")
puts("Prepend test: #{list}")
puts("List size: #{list.size()}")
puts("List HEAD: #{list.head}")
puts("List TAIL: #{list.tail}")
puts("List contains 4? #{list.contains? 4}")
puts("List contains -1? #{list.contains? -1}")
puts("List index of 'g': #{list.find? 'g'}")
puts("List index of 'abc': #{(list.find? 'abc').inspect}")
list.insert_at(5,-5)
puts("Insert at 5 (-5): ")
puts(list)
list.pop
puts("Demonstrating pop: ")
puts list
list.remove_at(5)
puts("Removing at 5")
puts list
