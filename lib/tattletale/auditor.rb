module Tattletale
  module Auditor 
    extend ActiveSupport::Concern
    include Tattletale::AuditorBehavior
  end
end

