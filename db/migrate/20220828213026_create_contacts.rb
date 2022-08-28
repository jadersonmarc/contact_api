class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :cpf
      t.string :email
      t.datetime :birth_date

      t.timestamps
    end
  end
end
