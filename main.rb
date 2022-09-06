require_relative 'linked_list.rb'
require_relative 'node.rb'

third = Node.new('third')
second = Node.new('second', third)
head = Node.new('first', second)
list = LinkedList.new(head)
p list
puts list.size
list.append('fourth')
p list
puts list.size
list.prepend('zero')
p list
puts list.size
p list.head
p list.tail
p list.at(3)
p list.at(7)
list.pop
p list
puts list.size
puts list.contains?('test')
puts list.contains?('second')
puts list.find('first')
puts list.to_s
p list
list.insert_at('inserted', 3)
puts list.to_s
p list
puts list.size
list.remove_at(4)
puts list.to_s
p list
puts list.size
list.remove_at(4)
puts list.to_s
p list
puts list.size