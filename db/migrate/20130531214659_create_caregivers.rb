class CreateCaregivers < ActiveRecord::Migration
  def change
    create_table :caregivers do |t|
      t.string :description

      t.timestamps
    end
  end
end
