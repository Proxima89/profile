class Person 
    attr_accessor :name, :age

    def create(name, age) 
        @name = name 
        @age = age
    end
end

RSpec.describe Person, type: :model do 
    describe 'creation' do
        it 'Checks if can be created new person' do 
            person = Person.create(name: "Viktor", age: 32) 
            # expect(human.person("Viktor", 32)).to be_truthy
            expect(person).to eq(be_valid)
        end
    end
end
