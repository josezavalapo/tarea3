class Nodo
    attr_accessor :value,:siguiente
    def initialize (val, ref)
        @value=val
	    @ref=ref
    end

    def to_s
        @value
    end
end

class LinkedList
    def initialize(val)
    	@head = Nodo.new(val,nil)
    end

    def agregar(value)
        actual=@head
        while actual.siguiente != nil
            actual=actual.siguiente
        end 
        actual.siguiente=Nodo.new(value,nil)
    end

	def mostrar
        actual = @head
        lista=[]
        while actual.siguiente != nil 
            lista+=[actual.value]
            actual=actual.siguiente
        end
        lista+=[actual.value]
        puts lista.join(",")
    end
end
puts "Introduzca valores a la lista, y agregue -1 cuando acabe"
var=gets.chomp
limite="-1"
prueba=LinkedList.new(var)
while var != limite
    var=gets.chomp
    if var != limite
        prueba.agregar(var)
    end
end
puts "\nLos valores introducidos en la lista fueron estos:"
prueba.mostrar
puts "\n"
