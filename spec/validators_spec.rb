require '../valdators'

describe 'validate.rb -validate_input'
    xit 'checks if input is valid' do
        expect(validate_input("1")).to eq(true)
        expect(validate_input("2")).to eq(true)
        expect(validate_input("3")).to eq(true)
        expect(validate_input("4")).to eq(true)
        expect(validate_input("4.231")).to eq(true)
        expect(validate_input("4hsfjk")).to eq(true)

        expect(validate_input("0")).to eq(false)
        expect(validate_input("5")).to eq(false)
        expect(validate_input("500")).to eq(false)
        expect(validate_input("hello")).to eq(false)
    end
end

describe 'valadate withdrawal' do
    it 'is a positive integer' do
        expect (Validators.validate_withdrawal("100")).to eq(true)

        # expect (Validators.validate_withdrawal("100")).to eq(false)
    end

    it 'is <= the current bank balance' do
        
    end
end