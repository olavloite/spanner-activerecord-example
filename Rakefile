# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Use of this source code is governed by an MIT-style
# license that can be found in the LICENSE file or at
# https://opensource.org/licenses/MIT.

require_relative 'config/environment'
require 'sinatra/activerecord/rake'
require 'docker'

desc 'Runs a simple ActiveRecord tutorial on a Spanner emulator.'
task :run do
  puts 'Downloading Spanner emulator image...'
  Docker::Image.create 'fromImage' => 'gcr.io/cloud-spanner-emulator/emulator:latest'
  puts 'Creating Spanner emulator container...'
  container = Docker::Container.create(
    'Image' => 'gcr.io/cloud-spanner-emulator/emulator:latest',
    'ExposedPorts' => { '9010/tcp' => {} },
    'HostConfig' => {
      'PortBindings' => {
        '9010/tcp' => [{ 'HostPort' => '9010' }]
      }
    }
  )

  begin
    puts 'Starting Spanner emulator...'
    container.start!

    sh 'ruby config/create_emulator_instance.rb'
    sh 'rake db:migrate'
    sh 'rake db:seed'
    sh 'ruby application.rb'
  ensure
    container.stop!
  end
end
