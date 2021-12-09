class CreateMetrics < ActiveRecord::Migration[6.1]
  def change
    create_table :metrics do |t|
      t.string :name
      t.decimal :value
      t.timestamp :time
    end
  end
end
