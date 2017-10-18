class Houses1 < ActiveRecord::Migration[5.1]
  def change
      create_table :houses do |t|
        t.string :adress
        t.timestamps
    end
  end
end
