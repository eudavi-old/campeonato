class Home < ApplicationRecord

	def self.search(query)
		if query.present?
			where('matricula::integer LIKE :query')
		end
	end

end