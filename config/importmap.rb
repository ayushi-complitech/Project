# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "trix"
pin "@rails/actiontext", to: "actiontext.js"
pin "@rails/ujs", to: "@rails--ujs.js" # @7.1.2
pin "bootstrap.bundle.min"
pin "jquery.min"
pin "validate.min"
pin "select2.min"
pin "datatables.min"
pin "app"
pin "form_validation_library"
pin "datatables_basic"