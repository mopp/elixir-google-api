# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.CloudRun.V1alpha1.Model.InstanceStatus do
  @moduledoc """
  Instance represents the status of an instance of a Job.

  ## Attributes

  *   `completionTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Represents time when the instance was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. +optional
  *   `failed` (*type:* `integer()`, *default:* `nil`) - Optional. The number of times this instance exited with code > 0; +optional
  *   `index` (*type:* `integer()`, *default:* `nil`) - Required. Index of the instance, unique per Job, and beginning at 0.
  *   `lastExitCode` (*type:* `integer()`, *default:* `nil`) - Optional. Last exit code seen for this instance. +optional
  *   `restarted` (*type:* `integer()`, *default:* `nil`) - Optional. The number of times this instance was restarted. Instances are restarted according the restartPolicy configured in the Job template. +optional
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Represents time when the instance was created by the job controller. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC. +optional
  *   `succeeded` (*type:* `integer()`, *default:* `nil`) - Optional. The number of times this instance exited with code == 0. +optional
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :completionTime => DateTime.t(),
          :failed => integer(),
          :index => integer(),
          :lastExitCode => integer(),
          :restarted => integer(),
          :startTime => DateTime.t(),
          :succeeded => integer()
        }

  field(:completionTime, as: DateTime)
  field(:failed)
  field(:index)
  field(:lastExitCode)
  field(:restarted)
  field(:startTime, as: DateTime)
  field(:succeeded)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.InstanceStatus do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.InstanceStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.InstanceStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end