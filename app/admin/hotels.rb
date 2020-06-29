ActiveAdmin.register Hotel do
  COLUMNS = [:name, :short_info, :hotel_info]

  permit_params *COLUMNS, translations_attributes: [:locale, :id, *COLUMNS]

  index do
    id_column
    column 'Название', :name
    actions
  end

  show do
    attributes_table do
      row(:id)
      row(:name)
      row(:short_info)
      row(:hotel_info)
    end
  end

  form do |f|
    f.inputs "Hotel" do
      f.inputs :name, disabled: true
    end

    f.globalize_inputs :translations do |t|
      t.inputs do
        t.input :name
        t.input :short_info
        t.input :locale, as: :hidden
      end
    end

    f.actions
  end
end
