# frozen_string_literal: true

#   Copyright 2020 Stephen Pearson <stephen.pearson@oracle.com>
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kitchen/driver/oci_version'

Gem::Specification.new do |spec|
  spec.name          = 'kitchen-oci'
  spec.version       = Kitchen::Driver::OCI_VERSION
  spec.authors       = ['Stephen Pearson']
  spec.email         = ['stephen.pearson@oracle.com']
  spec.description   = 'A Test Kitchen Driver for Oracle OCI'
  spec.summary       = spec.description
  spec.homepage      = ''
  spec.license       = 'Apache-2.0'

  # rubocop:disable SpecialGlobalVars
  spec.files         = `git ls-files`.split($/)
  # rubocop:enable SpecialGlobalVars
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'oci', '~> 2.15.0'
  spec.add_dependency 'test-kitchen'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'cane'
  spec.add_development_dependency 'countloc'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'tailor'
end
