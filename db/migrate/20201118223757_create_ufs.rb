class CreateUfs < ActiveRecord::Migration[6.0]
  def change
    create_table :ufs do |t|
      t.date :fecha
      t.float :valor_uf

      t.timestamps
    end
  end
end
