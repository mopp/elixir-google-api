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

defmodule GoogleApi.ContainerAnalysis.V1.Model.PackageOccurrence do
  @moduledoc """
  Details on how a particular software package was installed on a system.

  ## Attributes

  *   `location` (*type:* `list(GoogleApi.ContainerAnalysis.V1.Model.Location.t)`, *default:* `nil`) - Required. All of the places within the filesystem versions of this package have been found.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the installed package.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :location => list(GoogleApi.ContainerAnalysis.V1.Model.Location.t()) | nil,
          :name => String.t() | nil
        }

  field(:location, as: GoogleApi.ContainerAnalysis.V1.Model.Location, type: :list)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1.Model.PackageOccurrence do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.PackageOccurrence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1.Model.PackageOccurrence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
