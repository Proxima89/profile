class Prince
    attr_reader :name 

    def initialize(name) 
        @name = name
    end
end

RSpec.describe Prince do 
    subject { described_class.new('Viktor') }
    let(:lotus) { described_class.new('Lotus') }

    it 'represents a great person' do 
        expect(subject.name).to eq('Viktor')
        expect(lotus.name).to eq('Lotus')
    end
end
