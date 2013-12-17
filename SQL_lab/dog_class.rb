require 'mysql2'
 
class Dog
  
  attr_accessor :name, :color, :id

  @@db = Mysql2::Client.new(:host => "localhost", :username => "root", :database => "dogs")

  def initialize(name, color)
    @name = name
    @color = color
    @id
  end

  def self.db
    @@db
  end

  def db
    @@db
  end

  def self.find_by_id(id)
    row = self.db.query("
      SELECT *
      FROM dogs
      WHERE id = #{id}
      ")

  end

  def self.find_by_name(name)
    results = self.db.query("
      SELECT *
      FROM dogs
      WHERE name = '#{name}'
      ")
      dogs = []
      results.each do |row|
        temp_dog = Dog.new(row["name"], row.first["color"])
        puts temp_dog
        dogs << temp_dog
      end
  end
 
 def insert
  self.db.query("
    INSERT INTO dogs(name, color)
    values ('#{self.name}', '#{self.color}')
    ")
  self.mark_as_saved!
 end

  def update
    if self.id > 0
      self.db.query("
        UPDATE dogs
        SET name ='#{self.name}', color = '#{self.color}'
        FOR id = #{self.id}
        ")
    else
      puts "This dog has not yet been saved"
    end
  end

  def delete
    if self.id > 0
      self.db.query("
        DELETE FROM dogs
        WHERE id = '#{self.id}'
        ")
    else
      puts "This dog has not yet been saved"
    end
  end

  def mark_as_saved!
    self.id = self.db.last_id if self.db.last_id > 0
  end

  def saved?
    if self.id.nil?
      return false
    else
      return true
    end
  end

  def unsaved?
    !saved?
  end

  def save!
    if self.saved?
      self.update
    else
      self.insert
    end
  end

  def ==(other_dog)
    self.id == other_dog.id
  end

  def inspect
    puts "You observe a dog.  It is #{color} and answers to the name '#{self.name}.'"
    if id.nil?
      puts "It has no collar."
    else
      puts "It has a tag aroud its neck that says '#{id}.'"
    end
  end

  def new_from_db(row)
    dog = Dog.new(row["name"], row["color"])
    dog.id = row["id"]
    dog
  end

end


dog = Dog.find_by_name("Cocoa")
puts dog[4]

 
 
  # refactorings?
  # new_from_db?
  # reload
  # attributes