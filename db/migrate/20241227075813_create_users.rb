class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :line_user_id
      t.string :name
      t.string :profile_image_url

      t.timestamps
    end
  end
end
