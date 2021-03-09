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

defmodule GoogleApi.DFAReporting.V33.Model.InventoryItem do
  @moduledoc """
  Represents a buy from the Planning inventory store.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID of this inventory item.
  *   `adSlots` (*type:* `list(GoogleApi.DFAReporting.V33.Model.AdSlot.t)`, *default:* `nil`) - Ad slots of this inventory item. If this inventory item represents a standalone placement, there will be exactly one ad slot. If this inventory item represents a placement group, there will be more than one ad slot, each representing one child placement in that placement group.
  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Advertiser ID of this inventory item.
  *   `contentCategoryId` (*type:* `String.t`, *default:* `nil`) - Content category ID of this inventory item.
  *   `estimatedClickThroughRate` (*type:* `String.t`, *default:* `nil`) - Estimated click-through rate of this inventory item.
  *   `estimatedConversionRate` (*type:* `String.t`, *default:* `nil`) - Estimated conversion rate of this inventory item.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this inventory item.
  *   `inPlan` (*type:* `boolean()`, *default:* `nil`) - Whether this inventory item is in plan.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#inventoryItem".
  *   `lastModifiedInfo` (*type:* `GoogleApi.DFAReporting.V33.Model.LastModifiedInfo.t`, *default:* `nil`) - Information about the most recent modification of this inventory item.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this inventory item. For standalone inventory items, this is the same name as that of its only ad slot. For group inventory items, this can differ from the name of any of its ad slots.
  *   `negotiationChannelId` (*type:* `String.t`, *default:* `nil`) - Negotiation channel ID of this inventory item.
  *   `orderId` (*type:* `String.t`, *default:* `nil`) - Order ID of this inventory item.
  *   `placementStrategyId` (*type:* `String.t`, *default:* `nil`) - Placement strategy ID of this inventory item.
  *   `pricing` (*type:* `GoogleApi.DFAReporting.V33.Model.Pricing.t`, *default:* `nil`) - Pricing of this inventory item.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Project ID of this inventory item.
  *   `rfpId` (*type:* `String.t`, *default:* `nil`) - RFP ID of this inventory item.
  *   `siteId` (*type:* `String.t`, *default:* `nil`) - ID of the site this inventory item is associated with.
  *   `subaccountId` (*type:* `String.t`, *default:* `nil`) - Subaccount ID of this inventory item.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of inventory item.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :adSlots => list(GoogleApi.DFAReporting.V33.Model.AdSlot.t()) | nil,
          :advertiserId => String.t() | nil,
          :contentCategoryId => String.t() | nil,
          :estimatedClickThroughRate => String.t() | nil,
          :estimatedConversionRate => String.t() | nil,
          :id => String.t() | nil,
          :inPlan => boolean() | nil,
          :kind => String.t() | nil,
          :lastModifiedInfo => GoogleApi.DFAReporting.V33.Model.LastModifiedInfo.t() | nil,
          :name => String.t() | nil,
          :negotiationChannelId => String.t() | nil,
          :orderId => String.t() | nil,
          :placementStrategyId => String.t() | nil,
          :pricing => GoogleApi.DFAReporting.V33.Model.Pricing.t() | nil,
          :projectId => String.t() | nil,
          :rfpId => String.t() | nil,
          :siteId => String.t() | nil,
          :subaccountId => String.t() | nil,
          :type => String.t() | nil
        }

  field(:accountId)
  field(:adSlots, as: GoogleApi.DFAReporting.V33.Model.AdSlot, type: :list)
  field(:advertiserId)
  field(:contentCategoryId)
  field(:estimatedClickThroughRate)
  field(:estimatedConversionRate)
  field(:id)
  field(:inPlan)
  field(:kind)
  field(:lastModifiedInfo, as: GoogleApi.DFAReporting.V33.Model.LastModifiedInfo)
  field(:name)
  field(:negotiationChannelId)
  field(:orderId)
  field(:placementStrategyId)
  field(:pricing, as: GoogleApi.DFAReporting.V33.Model.Pricing)
  field(:projectId)
  field(:rfpId)
  field(:siteId)
  field(:subaccountId)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.InventoryItem do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.InventoryItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.InventoryItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
