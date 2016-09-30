class CreateIndividuals < ActiveRecord::Migration
  def change
    create_table :individuals do |t|
      t.integer :family_id
      t.string :name

      t.timestamps null: false
    end
  end
end
