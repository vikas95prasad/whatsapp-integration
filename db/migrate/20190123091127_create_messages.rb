class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :to
      t.text :text_message

      t.timestamps
    end
  end
end
