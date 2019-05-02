class Board
    Colors=["black","white","red","blue","green","yellow"]
    
    attr_accessor :secret
    
    def initialize
        @secret=Array.new(4){ Colors[rand(6)]}
    end
    
    def evaluate_guess(guess)
        s2=secret.clone
        g2=guess.clone
        right=0
        near=0
        for i in 0..3 do
            if secret[i]==guess[i]
                s2[i]=""
                g2[i]=""
                right+=1
            end
        end
        g2.each do |c|
            if c!=""
                i=s2.find_index(c)
                if i!=nil
                    near+=1
                    s2[i]=""
                end
            end
        end
        return [right,near]
    end
end