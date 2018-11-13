require "listas/version"

Node = Struct.new(:value, :next, :prev)

class Etiqueta
	attr_reader :nom, :val, :gras, :gras_sa, :hc, :azu, :pro, :sal

	def initialize(nom, val, gras, gras_sa, hc, azu, pro, sal)
		@nom = nom
		@val = val
		@gras = gras
		@gras_sa = gras_sa
		@hc = hc
		@azu = azu
		@pro = pro
		@sal = sal
	end

	def formatear()
		@nom = nil
		@val = nil
		@gras = nil
		@gras_sa = nil
		@hc = nil
		@azu = nil
		@pro = nil
		@sal = nil
	end

	def to_s()
           	"#{self.class}: #{@nom},#{@val},#{@gras},#{@gras_sa},#{@hc},#{@azu},#{@pro},#{@sal}"
	end

	def kj(gras, hc, pro)
		(37 * @gras) + (17 * @hc) + (17 * @pro)
	end

	def kcal(gras, hc, pro)
		(9 * @gras) + (4 * @hc) + (3 * @pro)
	end
end

class List
	attr_reader :Size, :Head, :Tail

	def initialize()
		@Size = 0
		@Head = nil
		@Tail = nil
	end

	def push_start(value)
		if(@Size == 0)
			@Tail = value
			value.next = nil
		else
			@Head.prev = value
			value.next = @Head
		end

		@Head = value
		value.prev = nil
		@Size = @Size + 1
	end

	def push_end(value)
		if(@Size == 0)
			@Head = value
			value.prev = nil
		else
			@Tail.next = value
			value.prev = @Tail
		end

		@Tail = value
		value.next = nil
		@Size = @Size + 1
	end

	def pop_start()
		if(@Size == 0)
			puts "La lista esta vacia"
		else
			aux = @Head
			(@Head.next).prev = nil
			@Head = @Head.next
			@Size = @Size - 1
			return aux
		end
	end

	def pop_end()
		if(@Size == 0)

		else
			aux = @Tail
			(@Tail.prev).next = nil
			@Tail = @Tail.prev
			@Size = @Size - 1
			return aux
		end
	end

	def reverse()
		list = List.new()
		self.each {|entry| list.push_start(Node.new(entry.value,nil,nil))}
		return list
	end

	def get_size()
		@Size
	end
end


