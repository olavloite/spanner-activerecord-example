# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Use of this source code is governed by an MIT-style
# license that can be found in the LICENSE file or at
# https://opensource.org/licenses/MIT.

require 'active_record'
require 'bundler'

Bundler.require

ActiveRecord::Base.establish_connection(
  adapter: 'spanner',
  emulator_host: 'localhost:9010',
  project: 'test-project',
  instance: 'test-instance',
  database: 'test-database'
)
ActiveRecord::Base.logger = nil
