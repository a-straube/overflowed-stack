class AddTableComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :answer, :string
      t.column :name, :string
      t.column :question_id, :integer

      t.timestamps
    end
  end
end
