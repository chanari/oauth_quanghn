class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :userss do |t|

      t.timestamps
    end
  end
end
