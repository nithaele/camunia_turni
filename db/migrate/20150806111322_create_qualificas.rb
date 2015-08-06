class CreateQualificas < ActiveRecord::Migration
  def change
    create_table :qualificas do |t|
      t.string :qualifica
      t.references :user, index: true

      t.timestamps
    end
  end
end
