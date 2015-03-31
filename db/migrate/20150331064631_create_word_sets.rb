class CreateWordSets < ActiveRecord::Migration
  def change
    create_table :word_sets do |t|
      t.string :name
      t.string :noun1
      t.string :adjective1
      t.string :verb1

      [adverb1] [noun2] [adjective2] [plural noun1] [plural noun2] [plural noun3]
      [part of the body1] [noun3] [noun4] [noun5] [noun6] [part of the body2]
      t.timestamps null: false
    end
  end
end
