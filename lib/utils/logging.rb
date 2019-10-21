require 'active_record'
require 'logger'

module DataAnon
  module Utils
    module Logging

      def self.logger
        @@logger ||= (self.logger = Logger.new(STDOUT) )
      end

      def self.logger= logger
        @@logger = logger
        ActiveRecord::Base.logger = logger
        @@logger
      end

      def logger
        ::DataAnon::Utils::Logging.logger
      end

      def logger= logger
        ::DataAnon::Utils::Logging.logger = logger
      end

    end
  end
end
