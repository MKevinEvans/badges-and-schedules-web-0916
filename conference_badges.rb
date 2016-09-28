require 'pry'

speakers = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(names)
  names = "Hello, my name is "+names+"."
end

def batch_badge_creator(array)
  array.collect do |name|
    badge_maker(name)
  end
end

def assign_rooms(array)
  array.each_with_index.collect do |name, index|
    name = "Hello, #{name}! You'll be assigned to room #{index+1}!"
  end

end

def printer(speakers)
  tags = batch_badge_creator(speakers)
  rooms = assign_rooms(speakers)
  tags.each {|tag| puts tag}
  rooms.each {|room| puts room}
end
