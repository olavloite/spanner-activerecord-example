# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Use of this source code is governed by an MIT-style
# license that can be found in the LICENSE file or at
# https://opensource.org/licenses/MIT.

# Model for a Singer entity.
class Singer < ActiveRecord::Base
  has_many :albums
end
