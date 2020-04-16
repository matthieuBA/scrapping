def recursively_raise(c=0)
    raise "Level #{ c }"
    puts "TOTO"
  rescue => e
    if c < 100
      recursively_raise(c + 1)
    else
      recursively_print(e)
    end
  end
  
  def recursively_print(e)
    if e
      puts e
      recursively_print(e.cause)
    end
    puts "TOTO"
  end

  recursively_raise()