ActiveAdmin.register Hotel::Translation do
  [:en, :ru].each_with_index do |locale, index|
    scope(locale, default: index == 0) { |scope| scope.where(locale: locale) }
  end

end
