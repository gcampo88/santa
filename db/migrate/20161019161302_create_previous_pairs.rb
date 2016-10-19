class CreatePreviousPairs < ActiveRecord::Migration
  def change
    create_table :previous_pairs do |t|
      t.integer :year, null:false
      t.integer :giver_id, null:false
      t.integer :recipient_id, null:false
      
      t.timestamps null:false
    end
  end
end
