class CreatePdfs < ActiveRecord::Migration
  def change
    create_table :pdfs do |t|
      t.string :title, :author, :attachment

      t.timestamps
    end
  end
end
