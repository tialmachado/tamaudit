module Tamaudit
  module Auditor 
    extend ActiveSupport::Concern
    include Tamaudit::AuditorBehavior
  end
end

