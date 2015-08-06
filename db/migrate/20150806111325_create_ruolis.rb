class CreateRuolis < ActiveRecord::Migration
  def change
    create_table :ruolis do |t|
      t.string :ruolo
      t.references :user, index: true

      t.timestamps
    end
  end
end
