class AddImageToGrupo < ActiveRecord::Migration[5.1]
	def up
		add_attachment :grupos, :image
	end
end
