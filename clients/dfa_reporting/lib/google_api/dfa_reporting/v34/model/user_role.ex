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

defmodule GoogleApi.DFAReporting.V34.Model.UserRole do
  @moduledoc """
  Contains properties of auser role, which is used to manage user access.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID of this user role. This is a read-only field that can be left blank.
  *   `defaultUserRole` (*type:* `boolean()`, *default:* `nil`) - Whether this is a default user role. Default user roles are created by the system for the account/subaccount and cannot be modified or deleted. Each default user role comes with a basic set of preassigned permissions.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this user role. This is a read-only, auto-generated field.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#userRole".
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this user role. This is a required field. Must be less than 256 characters long. If this user role is under a subaccount, the name must be unique among sites of the same subaccount. Otherwise, this user role is a top-level user role, and the name must be unique among top-level user roles of the same account.
  *   `parentUserRoleId` (*type:* `String.t`, *default:* `nil`) - ID of the user role that this user role is based on or copied from. This is a required field.
  *   `permissions` (*type:* `list(GoogleApi.DFAReporting.V34.Model.UserRolePermission.t)`, *default:* `nil`) - List of permissions associated with this user role.
  *   `subaccountId` (*type:* `String.t`, *default:* `nil`) - Subaccount ID of this user role. This is a read-only field that can be left blank.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :defaultUserRole => boolean() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :parentUserRoleId => String.t() | nil,
          :permissions => list(GoogleApi.DFAReporting.V34.Model.UserRolePermission.t()) | nil,
          :subaccountId => String.t() | nil
        }

  field(:accountId)
  field(:defaultUserRole)
  field(:id)
  field(:kind)
  field(:name)
  field(:parentUserRoleId)
  field(:permissions, as: GoogleApi.DFAReporting.V34.Model.UserRolePermission, type: :list)
  field(:subaccountId)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.UserRole do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.UserRole.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.UserRole do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
