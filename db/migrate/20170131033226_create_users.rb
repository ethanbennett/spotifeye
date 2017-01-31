class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :image
      t.string :token
      t.string :expires_in
      t.string :refresh_token

      t.timestamps
    end
  end
end
