require "spec_helper"

RSpec.describe Etiqueta do
	before :each do
		@chocolatina_tirma = Etiqueta.new("Chocolatina tirma",2132,27,14,61,50,4.5,0.51)
		@chips_ahoy = Etiqueta.new("Chips ahoy",2108,24,13,64,31,5.8,1.04)
		@papas_lays = Etiqueta.new("Papas Lays",2252,35.1,4.6,47.7,0.6,6.3,1.3)
		@turron_yema = Etiqueta.new("Turron de yema",1879,23,3.2,50,50,9.1,0.05)
		@oreo = Etiqueta.new("Oreo",2057,21,10,69,39,4.8,0.83)

		@n1 = Node.new(@chocolatina_tirma,nil,nil)
		@n2 = Node.new(@chips_ahoy,nil,nil)
		@n3 = Node.new(@papas_lays,nil,nil)
		@n4 = Node.new(@turron_yema,nil,nil)
		@n5 = Node.new(@oreo,nil,nil)

		@n1_prueba = Node.new(@chocolatina_tirma,nil,nil)
		@n2_prueba = Node.new(@chips_ahoy,nil,nil)
		@l = List.new()
		@l1 = List.new()

		@l.push_start(@n1_prueba)
		@l.push_start(@n2_prueba)
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

	describe "Node" do
		it "Debe existir un nodo de la lista con sus datos y su siguiente" do
			expect(@n1_prueba.next).to eq nil
			expect(@n1_prueba.prev).not_to eq nil

			expect(@n2_prueba.next).not_to eq nil
			expect(@n2_prueba.prev).to eq nil
		end
	end

	describe "List" do

		it "Se puede insertar un elemento por el Head" do
			expect(@l1.get_size()).to eq (0)
			@l1.push_start(@n1)
			expect(@l1.get_size()).to eq (1)
		end

		it "Se puede insertar un elemento por el Tail" do
			expect(@l1.get_size()).to eq(0)
			@l1.push_start(@n1)
			expect(@l1.get_size()).to eq (1)
		end

		it "Se pueden insertar varios elementos" do
			@l1.push_start(@n2)
			@l1.push_start(@n3)
			@l1.push_start(@n4)
			@l1.push_start(@n5)
			expect(@l1.get_size()).to eq(4)
		end

		it "Se puede extraer el primer elemento de la lista" do
			expect(@l.Size).to eq(2)
			@aux = @l.pop_start()
			expect(@l.Size).to eq(1)
			expect(@aux).to eq(@n2_prueba)
		end

		it "Se puede extraer el ultimo elemento de la lista" do
			@l.push_start(@n2_prueba)
			expect(@l.Size).to eq(3)
			@aux = @l.pop_end()
			expect(@l.Size).to eq(2)
			expect(@aux).to eq(@n1_prueba)
		end

		it "Debe existir una lista con su Head" do
			expect(@l.Head).not_to eq nil
		end

		it "Debe existir una lista con su Tail" do
			expect(@l.Tail).not_to eq nil
		end

		it "Clasificacion de las etiquetas segun los gramos de sal" do
			expect((@chocolatina_tirma).sal < 6).to eq(true)
			expect((@chips_ahoy).sal < 6).to eq(true)
			expect((@papas_lays).sal < 6).to eq(true)
			expect((@turron_yema).sal < 6).to eq(true)
			expect((@oreo).sal < 6).to eq(true)
		end

	end
end
