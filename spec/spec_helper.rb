require 'serverspec'
require 'pry'
require './files/default/schedule_task'

set :backend, :exec

module Specinfra
  module Backend
    class Exec < Base
      def run_command(_cmd)
        CommandResult.new(
        {
          :stdout      => ::Specinfra.configuration.stdout,
          :stderr      => ::Specinfra.configuration.stderr,
          :exit_status => ::Specinfra.configuration.exit_status,
          :exit_signal => nil
        })
      end
    end
    class Cmd < Base
      def run_command(_cmd)
        CommandResult.new(
        {
          :stdout      => ::Specinfra.configuration.stdout,
          :stderr      => ::Specinfra.configuration.stderr,
          :exit_status => ::Specinfra.configuration.exit_status,
          :exit_signal => nil
        })
      end
    end
  end
end
