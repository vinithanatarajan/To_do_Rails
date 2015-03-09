class CreateTodoitems < ActiveRecord::Migration
  def change
    create_table :todoitems do |t|
      t.references :todolist, index: true
      t.string :content
      t.datetime :completed_at

      t.timestamps null: false
    end
    add_foreign_key :todoitems, :todolists
  end
end
