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

defmodule GoogleApi.DFAReporting.V34.Model.CreativeGroup do
  @moduledoc """
  Contains properties of a creative group.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID of this creative group. This is a read-only field that can be left blank.
  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Advertiser ID of this creative group. This is a required field on insertion.
  *   `advertiserIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V34.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.
  *   `groupNumber` (*type:* `integer()`, *default:* `nil`) - Subgroup of the creative group. Assign your creative groups to a subgroup in order to filter or manage them more easily. This field is required on insertion and is read-only after insertion. Acceptable values are 1 to 2, inclusive.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this creative group. This is a read-only, auto-generated field.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#creativeGroup".
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this creative group. This is a required field and must be less than 256 characters long and unique among creative groups of the same advertiser.
  *   `subaccountId` (*type:* `String.t`, *default:* `nil`) - Subaccount ID of this creative group. This is a read-only field that can be left blank.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :advertiserId => String.t() | nil,
          :advertiserIdDimensionValue =>
            GoogleApi.DFAReporting.V34.Model.DimensionValue.t() | nil,
          :groupNumber => integer() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :subaccountId => String.t() | nil
        }

  field(:accountId)
  field(:advertiserId)
  field(:advertiserIdDimensionValue, as: GoogleApi.DFAReporting.V34.Model.DimensionValue)
  field(:groupNumber)
  field(:id)
  field(:kind)
  field(:name)
  field(:subaccountId)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.CreativeGroup do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.CreativeGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.CreativeGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
