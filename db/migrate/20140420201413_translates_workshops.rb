class TranslatesWorkshops < ActiveRecord::Migration
  def up
    Workshop.create_translation_table!({
      title: :string,
      description: :text
    }, {
      migrate_data: true
    })
  end
  def down
    Workshop.drop_translation_table! migrate_data: true
  end
end
