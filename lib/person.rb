# your code goes here

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name, amount=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = amount
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(value)
        if value < 0
            @happiness = 0
        elsif value > 10
            @happiness = 10
        else
            @happiness = value
        end
    end 
    
    def hygiene=(value)
        if value < 0
            @hygiene = 0
        elsif value > 10
            @hygiene = 10
        else
            @hygiene = value
        end
    end

    def happy?
        @happiness>7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene+=4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    

end