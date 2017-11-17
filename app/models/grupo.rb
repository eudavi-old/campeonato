class Grupo < ApplicationRecord

	has_attached_file :image
	has_many :participantes

	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_presence_of :nome

	def verificaParticipantes(grupo)
		if grupo.participantes.size == 5
			grupo.status = true
			grupo.participantes.each do |g|
				if g.status != true
					grupo.status = false
				end
			end
		end
	end
end
