#Q1
print "Hello, World\n"
#-------------------------------------------------------------------------------------------#

#Q2
puts index = "Hello, World,".index('World')
#-------------------------------------------------------------------------------------------#

#Q3
#Q3: for loop
for i in 1..10
  print "This is funny monkey #{i}!\n"
end
print "\n"
#while loop
count = 1
while(count<=10)
  print "This is funny monkey #{count}!\n"
  count+=1
end
print "\n"

#Q3: 2nd method
#time method
count = 1
10.times do 
  print "This is funny monkey #{count}!\n"
  count+=1
end

#Q3: 3rd method
#each
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |i|
	print "This is funny monkey #{i}!\n"
end
#-------------------------------------------------------------------------------------------#

#Q4
puts "Welcome to Guessing Game!"
r = rand(1...1000) # => 13
puts "Pick a number between 1 to 1000"
puts r
guessNum = gets.to_i
while (r!=guessNum)
if r > guessNum
  puts "Your guessing is too low. Please guess again!"
  puts "Pick a number between 1 to 1000"
  guessNum = gets.to_i
  r < guessNum
  puts "Your guessing is too high. Please guess again!"
  puts "Pick a number between 1 to 1000"
  guessNum = gets.to_i
end
end 
puts "Congratulations!"  
#-------------------------------------------------------------------------------------------#

#Q5
data = ['hello',0, :sym, 3.4, "world",true , [0..3]]

def convert_to_type_strings(data)
  data_type = []
  data_length = data.length()
  for i in 0..data_length-1
    data_type[i] = data[i].class
  end
  return data_type
end
convert_to_type_strings(data)
#-------------------------------------------------------------------------------------------#

#Q6
def convert_to_type_strings()
  return ['hello',0, :sym, 3.4, "world",true , [0..3]].map{|i| i.class}
end
convert_to_type_strings()
#-------------------------------------------------------------------------------------------#

#Q7
ensemble = [:piano, :clarinet, :oboe, :trumpet, :frenchhorn, :violin, :piano, :oboe, :cello] 
def tabulate_sections(ensemble)
  h = { :piano => "percussion",
        :clarinet => "woodwind",
        :oboe => "woodwind",
        :trumpet => "brass",
        :frenchhorn => "brass",
        :violin => "strings",
        :piano => "percussion",
        :oboe => "woodwind",
        :cello => "strings"}
  
  count_percussion = 0
  count_woodwind = 0
  count_brass = 0
  count_strings = 0
  
  ensemble.each do |i|
    if(h[i]=="percussion") #hash[key] gives value
      count_percussion += 1
    elsif(h[i]=="woodwind")  
      count_woodwind +=1
    elsif(h[i]=="brass")  
      count_brass +=1  
    elsif(h[i]=="strings")  
      count_strings +=1   
    end
  end

 return {"percussion" => count_percussion,
            "woodwind" => count_woodwind,
            "brass" => count_brass,
            "strings" => count_strings}
end
tabulate_sections(ensemble)
#-------------------------------------------------------------------------------------------#