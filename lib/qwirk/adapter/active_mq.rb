require 'activemq'
require 'qwirk/adapter/active_mq/publisher'
require 'qwirk/adapter/active_mq/worker_config'

::Qwirk.register_adapter(:active_mq, ::Qwirk::Adapter::ActiveMQ::Publisher, ::Qwirk::Adapter::ActiveMQ::WorkerConfig) do |config|
  ::Qwirk::Adapter::JMS::Connection.new(config)
end
