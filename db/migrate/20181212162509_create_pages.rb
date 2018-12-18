class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :url
      t.string :content
      t.string :images
      t.string :publish_at

      t.timestamps
    end
  end
end
