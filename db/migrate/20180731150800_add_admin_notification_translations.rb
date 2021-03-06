class AddAdminNotificationTranslations < ActiveRecord::Migration[4.2]
  def self.up
    AdminNotification.create_translation_table!(
      {
        title: :string,
        body:  :text
      },
      { migrate_data: true }
    )
  end

  def self.down
    AdminNotification.drop_translation_table!
  end
end
