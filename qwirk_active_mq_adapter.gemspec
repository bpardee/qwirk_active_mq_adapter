Gem::Specification.new do |s|
  s.name        = 'qwirk_active_mq_adapter'
  s.version     = '0.1.0'
  s.summary     = 'ActiveMQ adapter for the qwirk library'
  s.description = 'Provides an ActiveMQ adapter as a communication interface for the qwirk library'
  s.platform    = 'java'
  s.authors     = ['Brad Pardee']
  s.email       = ['bradpardee@gmail.com']
  s.homepage    = 'http://github.com/ClarityServices/qwirk_active_mq_adapter'
  s.files       = Dir["{lib}/**/*"] + %w(LICENSE.txt Rakefile History.md README.md)
  #s.test_files  = Dir["test/**/*"]

  s.add_dependency 'qwirk_jms_adapter', '~> 0.1.0'
  s.add_dependency 'jruby-activemq'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rdoc'
end
