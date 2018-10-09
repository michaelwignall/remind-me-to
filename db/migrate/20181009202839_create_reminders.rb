class CreateReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :reminders do |t|
      t.string :what
      t.datetime :at

      t.timestamps
    end
  end
end
