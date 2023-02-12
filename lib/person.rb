# your code goes here
class Person 
    attr_accessor:bank_account
    def happiness=(happiness)
        if happiness <= 10 && happiness >= 0
        @happiness = happiness
        elsif happiness > 10
        @happiness = 10
        else
        @happiness = 0
        end  
    end
    attr_reader:happiness
    attr_reader:hygiene
     def hygiene=(hygiene)
        if hygiene <= 10 && hygiene >= 0
        @hygiene = hygiene
        elsif hygiene > 10
        @hygiene = 10
        else
        @hygiene = 0
        end
    end
    def initialize name
        @name = name
        self.bank_account = 25
        self.happiness = 8
        self.hygiene = 8
    end
    def name 
        @name
    end
    def clean?
    self.hygiene > 7 ? true : false
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def get_paid addition
    self.bank_account=(self.bank_account + addition)
    "all about the benjamins"
    end

    def take_bath 
        self.hygiene=(self.hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.hygiene=(self.hygiene - 3)
        self.happiness=(self.happiness + 2)
        "♪ another one bites the dust ♫"
    end
       
    def call_friend friend
        self.happiness=(self.happiness + 3)
        friend.happiness =(friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation friend, topic
        case topic
        when "politics" 
            self.happiness=(self.happiness - 2)
            friend.happiness=(friend.happiness - 2)
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness=(self.happiness + 1)
            friend.happiness=(friend.happiness + 1)
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
end

 r1 = Person.new("John")
r1.happiness=(2)
puts r1.happiness

 