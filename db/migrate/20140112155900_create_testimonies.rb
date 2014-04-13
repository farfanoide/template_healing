class CreateTestimonies < ActiveRecord::Migration
  def change
    create_table :testimonies do |t|
      t.string :person
      t.string :occupation
      t.text :content

      t.timestamps
    end
  end
end
