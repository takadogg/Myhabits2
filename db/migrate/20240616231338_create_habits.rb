class CreateHabits < ActiveRecord::Migration[7.0]
  def change
    create_table :habits do |t|
      t.string     :content,         null: false
      t.integer    :evaluation_id, null: false
      t.text       :memo
      t.timestamps
    end
  end
end
