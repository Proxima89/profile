RSpec.describe 'Comparison Matchers' do 
    describe do 
        it 'Compares' do 
            expect(28).to be > 19
            expect(1).to be <= 1
        end
    end
    describe 50 do 
        it { is_expected.not_to be > 101 }
        it { is_expected.to be <= 50 }
    end
end