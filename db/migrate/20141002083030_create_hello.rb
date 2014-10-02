class CreateHello < ActiveRecord::Migration
  def change
    create_table :hello do |t|
      t.string :body, :null => false
    end
  end
end
