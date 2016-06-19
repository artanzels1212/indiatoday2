class CreateAppUsers < ActiveRecord::Migration
  def change
    create_table :app_users do |t|
      t.string :user_name
      t.string :email
      t.string :mobile_no
      t.timestamps null: false
    end
  end
end
