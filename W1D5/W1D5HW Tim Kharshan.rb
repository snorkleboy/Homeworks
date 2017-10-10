
class Stack
  @stack
  def initialize
    @stack=[]
  end

  def add(el)
    @stack.push(el)
  end

  def remove
  @stack.pop
  end

  def show
    @stack
  end
end

class Queue
  @queue
  def initialize
    @queue=[]
  end

  def enqueue(el)
    push (el)
  end

  def dequeue
    @queue.shift
  end
end

class Map
  @map
  def initialize()
    @map=[]
  end

  def assign (key, val)
    @map.each do |entry|
      if entry[0]==key
        entry[1]=val
        return self
      end
    end
    @map.push([key,val])
  end
end
