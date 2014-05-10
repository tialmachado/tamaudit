require "tamaudit/engine"
require "request_store"

module Tamaudit

  autoload :Auditor, "tamaudit/auditor"
  autoload :AuditorBehavior, "tamaudit/auditor_behavior"
  autoload :AuditorRequest, "tamaudit/auditor_request"

  class << self

    attr_accessor :current_user_method
   
    def current_user_method
      @current_user_method ||= :current_user
    end

  end

end
