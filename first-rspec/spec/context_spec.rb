RSpec.describe '#even? method' do     
    # it 'Should return true if number is even'
    # it 'Should return false if number is odd'

    describe 'with even number' do 
        it 'should return true' do 
            expect(4.even?).to eq(true)
        end
    end

    describe 'with odd number' do 
        it 'should return false' do 
            expect(3.even?).to eq(false)
        end
    end
end