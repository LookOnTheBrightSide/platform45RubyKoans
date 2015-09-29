# lambda
# regex
# inject
# accessor methods
# open classes
# inheritance 
## super class
# scope operator
# instance methods
# class methods



# About Scoring nightmare


  def count_lines(file_name)
    file = open(file_name)
    count = 0
    while file.gets
      count += 1
    end
    puts count
  ensure
    file.close if file
  end

  count_lines("example_file.txt")


   def find_line(file_name)
    file = open(file_name)
    while line = file.gets
      puts line if line.match(/e/)

    end
  ensure
    file.close if file
  end

  find_line("example_file.txt")


   def count_lines3(file_name)
    open(file_name) do |file|
      count = 0
      while file.gets
        count += 1
      end
      puts count
    end
  end

  count_lines3("example_file.txt")



class Dog

  def say_name(name)
    @name = name
    puts name
  end
  def name
      @name
  end

end
puts Dog.class
fidz = Dog.new
# fidz.(@name)

fidz.say_name("Bokinni")

fid = Dog.new
puts fid.instance_variables

puts fidz.instance_variable_get("@name")
puts fidz.instance_eval("@name")
puts fidz.instance_eval  { @name }
puts fidz.name



class Dog6
    attr_reader :name
    def initialize(initial_name)
      @name = initial_name
    end
end

pup = Dog6.new("momo")
puts pup.name

sol = Dog6.new("slomo")
 puts sol.name != pup.name



   class Dog7
    attr_reader :name

    def initialize(initial_name)
      @name = initial_name
    end

    def get_self
      self
    end

    def to_s
      @name
    end

    def inspect
      "<Dog named '#{name}'>"
    end
  end


  flo = Dog7.new("Flotus")
  puts flo.get_self
  puts flo.inspect

  som = Dog7.new("oke")
puts som.to_s
# open existing class
class ::Integer
    def even?
      (self % 2) == 0
    end
end



class Doggie
    attr_reader :name

    def initialize(name)
      @name = name
    end

    def bark
      "WOOF"
    end
  end

  class Chihuahua < Doggie
    def wag
      :happy
    end

    def bark
      "yip"
    end
  end


class BullDog < Doggie
    def bark
      super + ", GROWL"
    end
  end

    class GreatDane < Doggie
    def growl
      super.bark + ", GROWL"
    end
  end

  scoob = Doggie.new("Scoobbie")
  puts "===========>"
  # puts scoob.wag
  telly = Chihuahua.new("telly")
  puts telly.bark
  puts "#{"#####################"}"
  puts telly.methods.size
  puts Chihuahua.ancestors
  puts "***===***"
  puts telly.is_a?(Object)
  brit = BullDog.new("B-bull-dog")

puts brit.bark

dane = GreatDane.new("Cind")
# puts dane.growl




class AboutModules 
  module Nameable
    def set_name(new_name)
      @name = new_name
    end

    def here
      :in_module
    end
  end
 # mod = Nameable.new
# puts mod 
end




class AboutScope 
  module Jims
    class Dogzy
      def identify
        :jims_dog
      end
    end
  end

  module Joes
    class Dogzy
      def identify
        :joes_dog
      end
    end
  end

  sony =  Joes::Dogzy.new
  telkom =  Jims::Dogzy.new
  def telkom.laugh
    "hehehohehe"
  end
  puts telkom.laugh
  # puts sony.laugh
  puts sony.identify
  puts sony.class 
  puts Joes::Dogzy != Jims::Dogzy

  class String
  end

  puts AboutScope::String == String
  puts String == "hello".class
  puts ::String == "hello".class
  puts "=======>"

  PI = 3.1416
  puts PI

  MyString = ::String
  puts MyString == String
  puts MyString == "String".class
  puts AboutScope.const_get("PI")
  puts Jims.constants
end

class Pet
  attr_accessor :name
  class << self
    def colors
      :blue_and_purple
    end
  end
  def Pet.name
    @name
  end
  def sound 
    :tweet
  end
end
def Pet.sound
  :cuckoo
end
puts Pet.sound

fid = Pet.new
puts fid.sound
puts Pet.name
fid.name = ("Canon Ball!")
puts fid.name 
puts fid.class.colors







puts "#{"###########################"}"

  class MessageCatcher
    def add_a_payload(*args)
      args
    end
  end

  msg = MessageCatcher.new
  puts msg.add_a_payload(3,nil,Object,Array)

  golie = MessageCatcher.new
  



  class AllMessageCatcher
    def method_missing(method_name, *args, &block)
      "Someone called #{method_name} with <#{args.join(", ")}>"
    end
  end

   catcher = AllMessageCatcher.new
   puts catcher.footie
   puts catcher.foobar(1,2,3,4)
   puts catcher.sum([1,2,3,4,5])
   puts catcher.respond_to?(:anything_here)


  class WellBehavedFooCatcher
    def method_missing(method_name, *args, &block)
      if method_name.to_s[0,3] == "foo"
        "Foo to you too"
      else
        super(method_name, *args, &block)
      end
    end
  end

  fee = WellBehavedFooCatcher.new
  puts catcher.foo_xie



   class CanNotBeTreatedAsString
    def to_s
      "non-string-like"
    end
  end

  not_like_a_string = CanNotBeTreatedAsString.new
puts not_like_a_string.to_s
puts File.exist?(CanNotBeTreatedAsString.new)






