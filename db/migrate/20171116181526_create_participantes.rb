class CreateParticipantes < ActiveRecord::Migration[5.1]
  def change
    create_table :participantes do |t|
      t.string :nome
      t.integer :matricula
      t.boolean :status

      t.timestamps
    end
  end
end
