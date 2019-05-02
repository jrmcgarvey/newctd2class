class MyClass
    def initialize
        @my_hash=Hash.new
    end
    
    def render
        puts @my_hash.to_s
    end
    
    def add(key,value)
        @my_hash[key]=value
    end
    
    def my_array
        return @my_hash.values
    end
end

class MyClassB < MyClass
    attr_accessor :my_hash
    
    def add(key,value)
        if value.is_a?(Integer)
            super(key,value)
            return true
        else
            return false
        end
    end
    
    def my_array_2
        a=self.my_array
        a.map!{ |entry| entry*3 }
        return a
    end
end