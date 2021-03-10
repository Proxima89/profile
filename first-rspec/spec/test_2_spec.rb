RSpec.describe Array do 

    subject { [1, 2] }

    context 'Check if subject is equal to 1 and 2' do

        it { is_expected.to eq([1, 2]) }

    end

end