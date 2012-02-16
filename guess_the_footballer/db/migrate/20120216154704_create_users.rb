class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.integer :bios_guessed

      t.timestamps
    end
  end
end
