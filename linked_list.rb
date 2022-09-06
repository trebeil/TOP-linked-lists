class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end

  def append(value)
    if self.head == nil
      self.head = Node.new(value)
    else
      node = self.head
      until node.next_node == nil
        node = node.next_node
      end
      node.next_node = Node.new(value)
    end
  end

  def prepend(value)
    if self.head == nil
      self.head = Node.new(value)
    else
      node = self.head
      self.head = Node.new(value, node)
    end
  end

  def size
    return 0 if self.head == nil
    node = self.head
    i = 1
    until node.next_node == nil
      i += 1
      node = node.next_node
    end
    return i
  end

  def tail
    return 'There are no nodes on this list' if self.head == nil
    node = self.head
    until node.next_node == nil
      node = node.next_node
    end
    return node
  end

  def at(index)
    return "Index (#{index}) is bigger than list's size (#{self.size})" if index > self.size
    node = self.head
    i = 1
    while i < index
      node = node.next_node
      i += 1
    end
    return node
  end

  def pop
    self.at(self.size - 1).next_node = nil
  end

  def contains?(value)
    return 'There are no nodes on this list' if self.head == nil
    node = self.head
    i = 1
    until i > self.size
      return true if node.value == value
      i += 1
      node = node.next_node
    end
    return false
  end

  def find(value)
    index = 1
    while index <= self.size
      return index if self.at(index).value == value
      index += 1
    end
  end

  def to_s
    string = 'nil'
    index = self.size
    while index >= 1
      string = "( #{self.at(index).value} ) -> " + string
      index -= 1
    end
    return string
  end

  def insert_at(value, index)
    new_node = Node.new(value, self.at(index))
    self.at(index - 1).next_node = new_node
  end

  def remove_at(index)
    self.at(index - 1).next_node = self.at(index).next_node
  end
end