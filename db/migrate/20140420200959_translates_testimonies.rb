class TranslatesTestimonies < ActiveRecord::Migration
  def up
    Testimony.create_translation_table!({
      occupation: :string,
      content: :text
    }, {
      migrate_data: false
    })
  end
  def down
    Testimony.drop_translation_table! migrate_data: true
  end
end
