Objected Oriented programming

Review of Object Oriented programming
Fundamental concept of Ruby and programming. One of the best ways to program
First it was instructional programming
Then it was functional programming - where you input a function and validate it with logic

Obeject oriented programming is a great way

class CurrencyConverter
  def initialize(amount_in_usd) #we pass an argument
    @amount_in_usd = amount_in_usd
  end

  def usd
    @amount_in_usd
  end

  def yuan
    @amount_in_usd * 6.3
  end
end

converter = CurrencyConverter.new(10)
converter.usd
#=> 10
converter.yuan
#=> 63.00

How do we manipulate the state inside the objects
class CurrencyConverter
  def initialize(amount_in_usd) #we pass an argument
    @amount_in_usd = amount_in_usd
  end

  def amount_in_usd=(new_amount)
    @amount_in_usd = new_amount
  end

  def usd
    @amount_in_usd
  end

  def yuan
    @amount_in_usd * 6.3
  end
end

converter = CurrencyConverter.new(10)
converter.yuan
#=> 63.00
blah = CurrencyConverter.new(20) #this proves that a Class is a template and you create a new instance.
blah.yuan
#=> 126.00
converter.amount_in_usd = 200
converter.yuan
#=> 1260.00

Ruby is made with objects
Everything we use in ruby - Integers, Strings, event 'true' - is an object

class Fruit

  def initialize(naem, sweetness, color)
    @name = name
    @sweetness = sweetness
    @color = color
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

end

class Fruit

  attr_reader :name # its equal to this (def name
  #@name
  #end)

  attr_writer :name #its equal to this (def name=(name)
    #@name = name
  #end)

  attr_accesor :name (its equal to both)

  def initialize(naem, sweetness, color)
    @name = name
    @sweetness = sweetness
    @color = color
  end

end

class Fruit
  attr_accesor :name, :sweetness

  def initialize(naem, sweetness, color)
    @name = name
    @sweetness = sweetness
    @color = color
  end

  def funny_name
    "FOOBAR #{name}"
  end

  def extra_funny_name
    #"EXTRA #{funny_name}"
  end

  def add_sugar
    sweetness += 1
  end

  ##OR
  def add_sugar(amount) #and when you call the method, you add the amount you want to add.
    sweetness += amount
  end
end

We can do whatever we want with the methods. You can create a new

class Fruit
  attr_accesor :name, :sweetness
  attr_writer :seeds

  def initialize(naem, sweetness, color)
    @name = name
    @sweetness = sweetness
    @color = color
  end

  def funny_name
    "FOOBAR #{name}"
  end

  def extra_funny_name
    #"EXTRA #{funny_name}"
  end

  def add_sugar
    sweetness += 1
  end

  ##OR
  def add_sugar(amount) #and when you call the method, you add the amount you want to add.
    sweetness += amount
  end

  def seeds
    if @seeds.nil? #if this is not specified it will make it true, meaning there are seeds.
      true
    else #if you specify that there are no seeds, then it will state that.
      @seeds
    end
  end

end

READABLE CODE IS MORE IMPORTANT THAN BEING SUCINT. BECAUSE THEN YOU CAN ALWAYS READ IT.
