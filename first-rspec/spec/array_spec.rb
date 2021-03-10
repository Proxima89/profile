RSpec.describe Array do 

    it 'Should check if initial length of Array is zero' do 
        expect(subject.length).to eq(0)
        expect(subject.push(1)).to eq([1])
    end
end
