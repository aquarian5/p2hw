class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :name, null:false

      t.timestamp(null:false)
    end
  end
end
