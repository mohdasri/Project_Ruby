class CreateNasyids < ActiveRecord::Migration
  def self.up
    create_table :nasyids do |t|
      t.string :Judul
      t.string :Artis
      t.string :Album
      t.string :Pengirim
      t.string :Email
      t.string :Sumber
      t.string :Kategori
      t.text :Lirik

      t.timestamps
    end
  end

  def self.down
    drop_table :nasyids
  end
end
