#Realizado por Daura Hernández díaz y Miguel Aurelio García González

require "rspec"
require "../lib/matriz.rb"

describe Matriz do

	before :each do
		@matriz = Matriz.new([[8, 16], [21, 34]])
		@matriz2 = Matriz.new([[1, 2], [3, 4]])
	end

 
  
	it " Primer elemento de la matriz " do
	  @matriz.pos(0, 0).should == 8
	end
 	
	it " Segundo elemento de la matriz " do
	  @matriz.pos(0, 1).should == 16
	end
	
	it " Tercer elemento de la matriz " do
	  @matriz.pos(1, 0).should == 21
	end
	
	it " Cuarto elemento de la matriz " do
	  @matriz.pos(1, 1).should == 34
	end

	
	it "Suma " do
	  (@matriz + @matriz2).should == [[9, 18], [24, 38]]
	end
	
	it "Resta " do
	  (@matriz - @matriz2).should == [[7, 14], [18, 30]]
	end
	
	it "Multiplicacion" do
	  (@matriz * @matriz2).should == [[56, 80], [123, 178]]
	end
end
