require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class Report < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :enabled? do
          bindings[:abstract_model].model.respond_to? :generate_report
        end

        register_instance_option :link_icon do
          'icon-book'
        end

        register_instance_option :collection? do
          true
        end

        register_instance_option :http_methods do
          [:get, :post]
        end

        register_instance_option :controller do
          proc do
            objects = list_entries(@model_config, :export)
            filename = "#{params[:model_name]}_#{Time.zone.now.strftime('%Y-%m-%d_%Hh%Mm%S')}.xlsx"

            if request.post?
              send_data objects.generate_report.stream.read, filename: filename
            else
              render @action.template_name
            end
          end
        end
      end
    end
  end
end
