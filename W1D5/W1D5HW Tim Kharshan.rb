
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

class queue
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

class map
  @map
  def initialize()
    @map=[]
  end

  def assign (key, val)
    @map.each do |entry|
      if entry[0]==key
        entry[1]=val
        return
      end
    end
    @map.push([key,val])
  end
end
