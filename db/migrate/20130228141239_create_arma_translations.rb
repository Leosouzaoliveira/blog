class CreateArmaTranslations < ActiveRecord::Migration
  def up
      Arma.create_translation_table!({
      descricao: :text,
      historico: :text,
    }, {
      migrate_data: true
    })
  end

  def down
    Arma.drop_translation_table! migrate_data: true
  end
end
