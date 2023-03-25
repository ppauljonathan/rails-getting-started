class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.enum :status, %i[public private archived]

      t.timestamps
    end
  end
end
