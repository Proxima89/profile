class ProgrammingLanguage 
    attr_reader :name
    
    def initialize(name = 'Ruby')
        @name = name
    end
end 

RSpec.describe 'This is the programming language' do 
    let(:language) { ProgrammingLanguage.new('Python') }

    it 'should store the name of the language' do 
        expect(language.name).to eq('Python')
    end

    context 'with no argument' do 
        let(:language) { ProgrammingLanguage.new }
        
        it 'should default to Ruby as the name' do 
            expect(language.name).to eq('Ruby')
        end
    end
end