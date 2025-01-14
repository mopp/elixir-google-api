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

defmodule GoogleApi.ContainerAnalysis.V1.Model.PackageNote do
  @moduledoc """
  This represents a particular package that is distributed over various channels. E.g., glibc (aka libc6) is distributed by many, at various versions.

  ## Attributes

  *   `distribution` (*type:* `list(GoogleApi.ContainerAnalysis.V1.Model.Distribution.t)`, *default:* `nil`) - The various channels by which a package is distributed.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The name of the package.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :distribution => list(GoogleApi.ContainerAnalysis.V1.Model.Distribution.t()) | nil,
          :name => String.t() | nil
        }

  field(:distribution, as: GoogleApi.ContainerAnalysis.V1.Model.Distribution, type: :list)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1.Model.PackageNote do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.PackageNote.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1.Model.PackageNote do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
