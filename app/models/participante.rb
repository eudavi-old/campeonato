class Participante < ApplicationRecord
	belongs_to :grupo
	validates_presence_of :nome, :matricula

	def self.search(query)
		if (query.present?)
			find_by(['matricula LIKE :query', query: "#{query}"])
		end
	end
end
