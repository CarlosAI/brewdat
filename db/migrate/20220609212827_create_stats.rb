class CreateStats < ActiveRecord::Migration[7.0]
  def change
    create_table :stats do |t|
      t.string :nombre
      t.string :tabla
      t.string :createdby

      t.timestamps
    end
  end
end
