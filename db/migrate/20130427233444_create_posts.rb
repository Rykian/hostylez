class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string   "title"
      t.string   "slug"
      t.text     "content"
      t.boolean  "draft",      :default => true
      t.boolean  "aside",      :default => false
      t.string   "url"
      t.integer  "parent"
      t.timestamps
    end
  end
end
