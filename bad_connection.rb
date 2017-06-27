class BadConnection

  def initialize
    @goodbye_count = 0
    print_welcome
  end

  def print_welcome
    print_response("HELLO, THIS IS A GROCERY STORE!")
  end

  # def analyze_message
  #   message = listen_for_message
  #   if message == ""
  #     print_response("HELLO?!")
  #   elsif message == "GOODBYE!"
  #     check_goodbye_count
  #   elsif message == message.upcase
  #     print_response("NO, THIS IS NOT A PET STORE")
  #   elsif message != message.downcase
  #     print_response("I AM HAVING A HARD TIME HEARING YOU.")
  #   end
  # end

  def analyze_message
    message = listen_for_message
    case message
    when ""             then print_response("HELLO?")
    when "GOODBYE!"     then check_goodbye_count
    when message.upcase then print_response("NO, THIS IS NOT A PET STORE")
    else
      print_response("I AM HAVING A HARD TIME HEARING YOU.")
    end
  end

  def check_goodbye_count
    if @goodbye_count == 0
      @goodbye_count += 1
      print_response("ANYTHING ELSE I CAN HELP WITH?")
    else
      puts "THANK YOU FOR CALLING!"
    end
  end

  def print_response(message)
    puts message
    analyze_message
  end

  def listen_for_message
    gets.chomp
  end

end

BadConnection.new
