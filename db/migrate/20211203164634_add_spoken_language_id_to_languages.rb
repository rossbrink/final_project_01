class AddSpokenLanguageIdToLanguages < ActiveRecord::Migration[6.0]
  def change
    add_column :languages, :spoken_language_id, :integer
  end
end
