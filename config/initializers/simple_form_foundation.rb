# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  config.wrappers :vertical_foundation, class: :input, hint_class: :field_with_hint, error_class: :error do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label_input
    b.use :error, wrap_with: { tag: :small, class: :error }

    # Uncomment the following line to enable hints. The line is commented out by default since Foundation
    # does't provide styles for hints. You will need to provide your own CSS styles for hints.
    # b.use :hint,  wrap_with: { tag: :span, class: :hint }
  end

  config.wrappers :inline_form, tag: 'div', class: 'column large-4', hint_class: :field_with_hint, error_class: :error do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly

    b.use :label, class: 'hidden-for-small-up'
    b.use :input

    b.use :error, wrap_with: { tag: :small, class: :error }
    b.use :hint,  wrap_with: { tag: :span, class: :hint }
  end

  config.wrappers :vertical_boolean, tag: 'div', class: 'row', error_class: :error do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: 'div', class: 'large-12 columns' do |ba|
      ba.use :input
      ba.use :label
    end

    b.use :error, wrap_with: { tag: :small, class: :error }
    b.use :hint,  wrap_with: { tag: :span, class: :hint }
  end

  config.wrappers :vertical_radio_and_checkboxes, tag: 'div', class: 'row', error_class: :error do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: 'div', class: 'large-12 columns' do |ba|
      ba.use :label_input
    end

    b.use :error, wrap_with: { tag: :small, class: :error }
    b.use :hint,  wrap_with: { tag: :span, class: :hint }
  end


  # CSS class for buttons
  config.button_class = 'button'

  # We don't nest boolean fields into label, thus we need these two config
  config.item_wrapper_tag = :div
  config.boolean_style = :inline

  # CSS class to add for error notification helper.
  config.error_notification_class = 'alert-box alert'

  # The default wrapper to be used by the FormBuilder.
  config.default_wrapper = :vertical_foundation
end
