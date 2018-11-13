require "listas/version"

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

