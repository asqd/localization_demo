ActiveAdmin.register Hotel::Translation do
  actions :all, except: [:destroy]

  filter :hotel_id, as: :string, label: 'Hotel id'

  [:en, :ru].each_with_index do |locale, index|
    scope(locale, default: index == 0) { |scope| scope.where(locale: locale) }
  end

  COLUMNS = [:name, :short_info, :hotel_info]
  index do
    COLUMNS.each { |col| column(col) }
    actions
  end

  form do |f|
    f.inputs do
      f.input :globalized_model
      f.input :locale, as: :select, collection: I18n.available_locales.zip(I18n.available_locales)
      COLUMNS.each { |column| f.input column }
    end
  end
end
