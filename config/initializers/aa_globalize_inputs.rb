# frozen_string_literal: true

module Formtastic
  class FormBuilder
    def globalize_inputs(*args, &proc)
      index = options[:child_index] || "#{object.class}-#{object.object_id}"
      linker = ActiveSupport::SafeBuffer.new
      fields = ActiveSupport::SafeBuffer.new

      ::I18n.available_locales.each do |locale|
        elem_id = "lang-#{locale}-#{index}"

        linker << template.content_tag(
          :li,
          template.content_tag(
            :a,
            locale,
            href: "##{elem_id}"
          )
        )

        relation_args = args.dup << object.translation_for(locale)
        fields << template.content_tag(
          :div,
          semantic_fields_for(*relation_args, &proc), id: elem_id)
      end

      linker = template.content_tag(:ul, linker, class: 'language-selection')

      tabs_class = "language-tabs-#{index}"
      template.content_tag(
        :div,
        linker + fields,
        class: tabs_class
      ) +
      template.content_tag(
        :script,
        "$('.#{tabs_class}').tabs();".html_safe,
        type: 'text/javascript'
      )
    end
  end
end

module ActiveAdmin
  class FormBuilder
    attr_reader :form_buffers

    def initialize(*args)
      @form_buffers = ["".html_safe]
      super
    end

    def with_new_form_buffer
      form_buffers << "".html_safe
      return_value = yield
      form_buffers.pop
      return_value
    end

    def globalize_inputs(*args, &proc)
      content = with_new_form_buffer { super }
      @form_buffers.last << content.html_safe
    end
  end
end
