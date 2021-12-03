class RemoveLanguageIdFromSpokenLanguages < ActiveRecord::Migration[6.0]
  def change
    remove_column :spoken_languages, :language_id, :integer
  end
end
