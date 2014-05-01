require "tattletale/engine"
require "request_store"

module Tattletale

  autoload :Auditor, "tattletale/auditor"
  autoload :AuditorBehavior, "tattletale/auditor_behavior"
  autoload :AuditorRequest, "tattletale/auditor_request"

  class << self

    attr_accessor :current_user_method
   
    def current_user_method
      @current_user_method ||= :current_user
    end

  end

end
