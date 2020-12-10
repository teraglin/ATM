require '../index'

describe 'index.rb - hello' do
    it 'says hello' do
        expect(hello()).to eq("Hello World")
    end

    xit 'does something else' do
        
    end
end