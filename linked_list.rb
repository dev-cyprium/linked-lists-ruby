class LinkedList
	attr_reader :size

	class Node
		attr_accessor :value, :next

		def initialize(value)
			@value = value
			@next = nil
		end
	end

	def initialize
		@head = nil
		@tail = nil
		@size = 0
	end

	def append(data)
		node = Node.new(data)
		@size += 1
		if @head.nil?
			@head = node
			@tail = @head
		else
			@tail.next = node
			@tail = @tail.next
		end
	end

	def prepend(data)
		node = Node.new(data)
		@size += 1
		if @head.nil?
			@head = node
			@tail = @head
		else
			node.next = @head
			@head = node
		end
	end

	def insert_at(index, data)
		return nil if index > @size || index < 0
		node = Node.new(data)
		temp = @head
		i = 0
		until i == index
			temp = temp.next
			i += 1
		end 
		temp2 = temp.next
		temp.next = node
		node.next = temp2
		@tail = temp.next if index == @size-1
	end

	def contains?(value)
		temp = @head
		until temp.nil?
			return true if temp.value == value
			temp = temp.next
		end
		false
	end

	def remove_at(index)
		return nil if index > @size || index < 0
		temp = @head
		i = 0
		if index == 0
			@head = @head.next
			return
		end
		if index == @size-1
			pop()
			return 
		end
		until i == index-1
			temp = temp.next
			i+=1
		end
		temp.next = temp.next.next
	end

	def pop
		temp = @head
		until temp.next == @tail
			temp = temp.next
		end
		@tail = temp
		@tail.next = nil
	end

	def find?(value)
		temp = @head
		index = 0
		until temp.nil?
			return index if temp.value == value
			index += 1
			temp = temp.next
		end
		nil
	end

	def head
		@head.value
	end

	def tail
		@tail.value
	end

	def to_s
		temp = @head
		out = ""
		until temp.nil?
			out += "( #{temp.value} ) -> "
			temp = temp.next
		end
		out += ("nil")
	end
end