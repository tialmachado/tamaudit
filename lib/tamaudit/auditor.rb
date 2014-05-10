module TamAudit
  module Auditor 
    extend ActiveSupport::Concern
    include TamAudit::AuditorBehavior
  end
end

