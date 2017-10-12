def testcase
  ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
end

def sluggish
    a=testcase
    longest=""
    a.each do |f1|
      a.each do |f2|
        longest=f1 if f1.length>longest.length
      end
    end
    longest
  end
  def dominant(arr)
    mp=l/2
    left=arr[0...mp]
    right=arr[mp...arr.length]
    merge(dominant(left), dominant(right))
  end
    def merge(left,right)
      full=[]
      while(!left.empty? || !right.empty?)
        if (left.first > right.first)
          full.push(right.shift)
        else
          full.push(left.shift)
        end
      end
      full+left+right
    end
def clever()
  a=""
  testcase.each do |fish|
    a=fish if fish.length>a.length
  end
end
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
def slowdance(dir,tiles_array)
  tiles_array.each_index do |tile|
    return tile if tiles_array[tile]==dir
  end
  def fastdance(dir, hash)
    return hash[dir]
  end  
