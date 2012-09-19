# Handle Messaging and Queuing using ActiveMQ
module Qwirk
  module Adapter
    module ActiveMQ
      class WorkerConfig < JMS::WorkerConfig
        def self.in_process?(config)
          broker_url = config[:broker_url]
          return !!(broker_url && broker_url.start_with?('vm://'))
        end

        def init
          if self.topic_name
            self.queue_name = "Consumer.#{self.name}.VirtualTopic.#{topic_name}"
            self.topic_name = nil
          end
          super
        end
      end
    end
  end
end
