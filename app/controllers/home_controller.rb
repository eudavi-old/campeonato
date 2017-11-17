class HomeController < ApplicationController

	def index
		@participantes = Participante.all
	end

	def index2
		@grupos = Grupo.all
	end


end