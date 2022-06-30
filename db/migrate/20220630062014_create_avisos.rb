class CreateAvisos < ActiveRecord::Migration[7.0]
  def change
    create_table :avisos do |t|
      t.string :id_aviso
      t.string :id_socio
      t.string :id_usuario
      t.string :titulo
      t.string :descripcion
      t.string :categoria

      t.timestamps
    end
  end
end
