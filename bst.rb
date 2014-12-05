class Bst
  def initialize(data)
    @data = data
  end

  def data
    @data
  end

  def insert(n)
    if n <= data
      if @left
        @left.insert(n)
      else left = Bst.new(n)
    end
      else
       if @right
        @right.insert(n)
      end
    end
  end

  def left
    @left
  end

  def right
    @right
  end

  def each(&block)
  #yield(left.data) if left
  #yield(data)
  #yield(right.data) if right

  left.each(&block) if left
  yield(data)
  right.each(&block) if right

  end
end
