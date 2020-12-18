# model object is the objects that are being created with the external data



# class is going to look like a typical class 


# class declaration 
# need to keep track of all objects instantiated: 3 parts 
# instantiate with properties: name, age 



# difference between an array and hash 
# [{}, {}, {}]
# [["momo", "gaby", "camryn"], []. []]
# {name: "momo", age: 21, location: 'hawaii'}

# hash.each do |k, v|

# array.each do |element|

# self can only refer to either the class or instance, never both at once

class Person 

    # what is an attr_accessor? macro reader and writer / setter and getter
    attr_accessor :age
    attr_reader :name

  @@all  = [] # type of variable: class variable scope: class/between 'class' and 'end'

  # what method automatically invoked 'initialize'? .new
    def initialize(name, age)
        @name = name  # what type of variable? instance variable scope: inside of instance methods 
        @age = age
        save  
    end 

    def save 
        @@all << self # what is self? instance
    end 

# behaves as a reader for all array 
    def self.all # class method 
        @@all 
        # self # still the classs
    end 

    def self.find_person(name)
        # what type of variable is person: local scope: method its been defined in
        person =  self.all.find {|p| p.name == name}

    end 




end 

# need to create this person with name and age 
Person.new


# what is the difference between .each and .map/.collect?
# .each returns original array / .map or .collect return a new array of modifications


# blocks 

# what are items in an array called? elements 
# what are indexes? position of each element, and its starts at 0 
students = ["momo", "gaby", "camryn"]

students[2]

students.each do |student| 
    # block logic goes in here 
end 