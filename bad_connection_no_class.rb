# 1) Print hello message
# 2) Listen for a response
# 3) Analyze the response
#    a) if it is blank print --
#    b) if it is goodbye check for count
#       1) if count is less than 2 print --
#       2) if it is not print & stop
#    c) if it is all caps print --
#    d) if it is anything else print --
# 4) Keep going as long as count is less than 2 ??
goodbye_count = 0

puts "HELLO, THIS IS A GROCERY STORE!"

 while goodbye_count <= 1
   message = gets.chomp
   if message == ""
     puts "HELLO?!"
   elsif message == "GOODBYE!"
     goodbye_count += 1
     puts "ANYTHING ELSE I CAN HELP WITH?"
   elsif message == message.upcase
     puts "NO, THIS IS NOT A PET STORE"
   else
     puts "I AM HAVING A HARD TIME HEARING YOU."
   end
 end

 puts "THANK YOU FOR CALLING!"
