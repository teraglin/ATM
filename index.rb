require_relative('validators.rb')
require_relative('atm_view.rb')

system('clear')

def welcome_and_input(atm_view)

    atm_view.show_options

    input = gets.chomp
    input_valid = Validators.validate_input(input)
    if !input_valid
        #Error
        puts "Invalid input, please enter a number from 1-4"
        puts "press any key to continue"
        gets
        welcome_and_input()
    end

    case input
    when 1
        #show balance
        balance = File.read('balance.txt')
        puts "balance: $#{balance}"
    when 2
        #make a withdrawal
        puts "How much do you want to withdraw"
        withdrawal()
    when 3
        #deposit
        deposit()
    when 4
        #exit
        puts "See you later!"
        system("exit")
    end
    welcome_and_input(atm_view)
end

def make_withdrawal
    amount = gets.chomp

    Validators = Validators.validate_withdrawal(amount)



end

atm_view = AtmView.new
welcome_and_input(atm_view)