class Participante < ApplicationRecord

	belongs_to :grupo
	validates_presence_of :nome, :matricula
	paginates_per 10

end
