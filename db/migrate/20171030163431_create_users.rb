class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    t.string :firstname
	t.string :lastname
	t.text :email
	t.text :IDnum
	t.text :phone

      t.timestamps
    end
  end
end
