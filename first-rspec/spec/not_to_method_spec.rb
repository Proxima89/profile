# RSpec.describe 'Not to method' do 
#     it 'testing not_to method' do 
#         expect('hello').not_to eq('Hello')
#     end
# end

RSpec.describe 'Testing Matchers' do 
    let(:a) { 3.00 }
    let(:b) { 3 }

    describe do 
        it 'checks a & b' do 
            expect(a).to eq(b)
        end
        it 'check a & b include datatype' do 
            expect(a).to eql(3.00)
        end
    end
    let(:c) { 'Hello' }
    let(:d) { 'Hello' }
    let(:e) { c }

    describe do 
        it 'Check the equal method' do 
            expect(c).not_to equal(d)
        end
    end
end