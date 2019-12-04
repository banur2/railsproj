class CreateConsoles < ActiveRecord::Migration[6.0]
  def change
    create_table :consoles do |t|
      t.string :name, null: false
      t.string :manfacturer, null: false
      t.timestamps
    end
  end
end
