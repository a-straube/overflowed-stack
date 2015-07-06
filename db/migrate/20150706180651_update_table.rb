class UpdateTable < ActiveRecord::Migration
  def change
    add_column(:questions, :description, :string)
    add_column(:questions, :language, :string)
  end
end
