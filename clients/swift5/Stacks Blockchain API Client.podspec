Pod::Spec.new do |s|
  s.name = 'Stacks Blockchain API Client'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.0.0'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'vv3.0.3' }
  s.authors = 'Hiro Systems PBC'
  s.license = GPL-3.0
  s.homepage = 'https://github.com/hirosystems'
  s.summary = 'Stacks Blockchain API Client Swift SDK'
  s.description = 'Stacks Blockchain API Client'
  s.documentation_url = 'https://docs.hiro.so/api'
  s.source_files = 'StacksBlockchainAPIClient/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end
