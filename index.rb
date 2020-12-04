def hello
    return "Hello World"
end

def welcome_and_input
    system("clear")
    puts "Welcome to your firend;y neighbourhood ATM!"
    puts "Please select from the following options:"
    puts "1. Display Blance"
    puts "2. Make a Withdrawal"
    puts "3. Make a Deposit"
    puts "4. Exit"
    input = gets.chomp.to_i
    case input
    when 1
        #show balance
        system('clear')
        balance()
    when 2
        #make a withdrawal
        system('clear')
        withdrawal()
    when 3
        #deposit
        system('clear')
        deposit()
    when 4
        #exit
        system('clear')
        puts "See you later!"
        exit        
    else
        #Error
        puts "Invalid input, please enter a number from 1-4"
        puts "press any key to continue"
        gets
        welcome_and_input()
    end
end

welcome_and_input()