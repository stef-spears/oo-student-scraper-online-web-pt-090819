require 'pry'

class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    @name = student_hash.fetch(:name) 
    @location = student_hash.fetch(:location) 
    @@all << self
  end

  def self.create_from_collection(students_array)
    
    students_array.each do |student|
      
      self.new(student)
    end
  end

  def add_student_attributes(attributes_hash)
    
    attributes_hash.each do |k, v|
      binding.pry
    end
  end

  def self.all
    @@all 
  end
end

