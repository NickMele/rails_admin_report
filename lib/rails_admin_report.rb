require "rails_admin_report/engine"

module RailsAdminReport
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class Report < Base
        RailsAdmin::Config::Actions.register(self)
        
        register_instance_option :object_level do
          true
        end
      end
    end
  end
end

