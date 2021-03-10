RSpec.describe Array do 
    subject(:sally) do 
        [89, 93]
    end

    it 'Checks if Array has length of 2' do 
        expect(subject.length).to eq(2)
        subject.pop(1) 
        expect(subject.length).to eq(1)
    end

    it 'Confirmation that Sally has not changed to the original Array' do 
        expect(sally).to eq([89, 93])
    end
end
