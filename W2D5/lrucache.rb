class LRUCache
  def initialize(size)
    @cache=Array.new(size)
    @size=size
  end
  def size
    @size
  end
  def count
    @cache.count
  end

  def add(el)
    @cache.delete(el) if @cache.include?(el)
    @cache.shift if count==size
    @cache.push(el)
  end

  def show
    puts @cache
  end

  private
  # helper methods go here!

end
