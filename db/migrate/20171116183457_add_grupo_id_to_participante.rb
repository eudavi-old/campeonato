class AddGrupoIdToParticipante < ActiveRecord::Migration[5.1]
  def change
    add_column :participantes, :grupo_id, :integer
  end
end
