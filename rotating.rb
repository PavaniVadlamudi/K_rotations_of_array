
def Rotating_array_upto_ktimes(a,num,k)
    k.times do
      flag=a[num-1]
      j=num-1
      while j> 0
        a[j] = a[j-1]
        j=j-1
      end
      a[0]=flag
    end
  end
  def test_cases
    num=0
    k=0
    a=[]
    puts "enter (num)size:"
    while true
      c= STDIN.getc
      break if c=="\n"
      num=num*10+c.ord-48
    end
    puts "enter elements:"
    for j in 0...num
      n_num=0
      while true
        c=STDIN.getc
        break if c=="\n"
        n_num=n_num*10+c.ord-48
      end
      a[j]=n_num
    end
    puts "enter k:"
    while true
      c=STDIN.getc
      break if c=="\n"
      k=k*10+c.ord - 48
    end
    Rotating_array_upto_ktimes(a,num,k)
    puts "after #{k} rotations...:"
    for i in 0...num
      print a[i]
      print " " if i != num - 1
    end
    puts "\n"
  end
  puts "Enter number of test cases you want:"
  tc = 0
  while true
    c= STDIN.getc
    break if c== "\n"
    tc = tc* 10 + c.ord- 48
  end
  for t in 1..tc
    puts "\ncase #{t}:"
    test_cases
  end
  