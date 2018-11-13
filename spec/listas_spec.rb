require "spec_helper"
require 'lib/listas'

describe Etiqueta do
	before :each do
		@chocolatina_tirma = Etiqueta.new("Chocolatina tirma",2132,27,14,61,50,4.5,0.51)
		@chips_ahoy = Etiqueta.new("Chips ahoy",2108,24,13,64,31,5.8,1.04)
		@papas_lays = Etiqueta.new("Papas Lays",2252,35.1,4.6,47.7,0.6,6.3,1.3)
		@turron_yema = Etiqueta.new("Turron de yema",1879,23,3.2,50,50,9.1,0.05)
		@oreo = Etiqueta.new("Oreo",2057,21,10,69,39,4.8,0.83)

	end

	describe "Alimentos" do
		it "Debe existir un metodo para obtener el nombre" do
			expect(@chocolatina_tirma.nom).to eq("Chocolatina tirma")
			expect(@chips_ahoy.nom).to eq("Chips ahoy")
			expect(@papas_lays.nom).to eq("Papas Lays")
			expect(@turron_yema.nom).to eq("Turron de yema")
			expect(@oreo.nom).to eq("Oreo")
		end

		it "Debe existir un metodo para obtener el valor energetico" do
			expect(@chocolatina_tirma.val).to eq(2132)
			expect(@chips_ahoy.val).to eq(2108)
			expect(@papas_lays.val).to eq(2252)
			expect(@turron_yema.val).to eq(1879)
			expect(@oreo.val).to eq(2057)
		end

		it "Debe existir un metodo para obtener la cantidad de grasas" do
			expect(@chocolatina_tirma.gras).to eq(27)
			expect(@chips_ahoy.gras).to eq(24)
			expect(@papas_lays.gras).to eq(35.1)
			expect(@turron_yema.gras).to eq(23)
			expect(@oreo.gras).to eq(21)
		end

		it "Debe existir un metodo para obtener la cantidad de grasas saturadas" do
			expect(@chocolatina_tirma.gras_sa).to eq(14)
			expect(@chips_ahoy.gras_sa).to eq(13)
			expect(@papas_lays.gras_sa).to eq(4.6)
			expect(@turron_yema.gras_sa).to eq(3.2)
			expect(@oreo.gras_sa).to eq(10)
		end

		it "Debe existir un metodo para obtener la cantidad de hidratos de carbono" do
			expect(@chocolatina_tirma.hc).to eq(61)
			expect(@chips_ahoy.hc).to eq(64)
			expect(@papas_lays.hc).to eq(47.7)
			expect(@turron_yema.hc).to eq(50)
			expect(@oreo.hc).to eq(69)
		end

		it "Debe existir un metodo para obtener la cantidad de azucares" do
			expect(@chocolatina_tirma.azu).to eq(50)
			expect(@chips_ahoy.azu).to eq(31)
			expect(@papas_lays.azu).to eq(0.6)
			expect(@turron_yema.azu).to eq(50)
			expect(@oreo.azu).to eq(39)
		end

		it "Debe existir un metodo para obtener la cantidad de proteinas" do
			expect(@chocolatina_tirma.pro).to eq(4.5)
			expect(@chips_ahoy.pro).to eq(5.8)
			expect(@papas_lays.pro).to eq(6.3)
			expect(@turron_yema.pro).to eq(9.1)
			expect(@oreo.pro).to eq(4.8)
		end

		it "Debe existir un metodo para obtener la cantidad de sal" do
			expect(@chocolatina_tirma.sal).to eq(0.51)
			expect(@chips_ahoy.sal).to eq(1.04)
			expect(@papas_lays.sal).to eq(1.3)
			expect(@turron_yema.sal).to eq(0.05)
			expect(@oreo.sal).to eq(0.83)
		end
	end
end
