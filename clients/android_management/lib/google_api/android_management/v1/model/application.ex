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

defmodule GoogleApi.AndroidManagement.V1.Model.Application do
  @moduledoc """
  Information about an app.

  ## Attributes

  *   `appTracks` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.AppTrackInfo.t)`, *default:* `nil`) - Application tracks visible to the enterprise.
  *   `managedProperties` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.ManagedProperty.t)`, *default:* `nil`) - The set of managed properties available to be pre-configured for the app.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the app in the form enterprises/{enterprise}/applications/{package_name}.
  *   `permissions` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.ApplicationPermission.t)`, *default:* `nil`) - The permissions required by the app.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the app. Localized.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appTracks => list(GoogleApi.AndroidManagement.V1.Model.AppTrackInfo.t()) | nil,
          :managedProperties =>
            list(GoogleApi.AndroidManagement.V1.Model.ManagedProperty.t()) | nil,
          :name => String.t() | nil,
          :permissions =>
            list(GoogleApi.AndroidManagement.V1.Model.ApplicationPermission.t()) | nil,
          :title => String.t() | nil
        }

  field(:appTracks, as: GoogleApi.AndroidManagement.V1.Model.AppTrackInfo, type: :list)
  field(:managedProperties, as: GoogleApi.AndroidManagement.V1.Model.ManagedProperty, type: :list)
  field(:name)
  field(:permissions, as: GoogleApi.AndroidManagement.V1.Model.ApplicationPermission, type: :list)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.Application do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.Application.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.Application do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
