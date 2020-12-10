require '../atm_view.rb'

describe 'Atm View' do
    it 'show the app\'s options' do

        expected_output = "Welcome to your firend;y neighbourhood ATM!\n"\
        "Please select from the following options:\n"\
        "1. Display Blance\n"\
        "2. Make a Withdrawal\n"\
        "3. Make a Deposit\n"\
        "4. Exit\n"\

        app_view == Atm_View.new
        expect {app_view.show_options() }.to output(expected_output).to_stdout
    end
end