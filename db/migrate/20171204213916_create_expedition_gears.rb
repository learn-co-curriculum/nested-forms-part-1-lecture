class CreateExpeditionGears < ActiveRecord::Migration[5.1]
  def change
    create_table :expedition_gears do |t|
      t.integer :expedition_id
      t.integer :gear_id
    end
  end
end
