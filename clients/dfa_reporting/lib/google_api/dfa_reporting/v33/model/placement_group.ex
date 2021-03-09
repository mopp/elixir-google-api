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

defmodule GoogleApi.DFAReporting.V33.Model.PlacementGroup do
  @moduledoc """
  Contains properties of a package or roadblock.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID of this placement group. This is a read-only field that can be left blank.
  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Advertiser ID of this placement group. This is a required field on insertion.
  *   `advertiserIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V33.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.
  *   `archived` (*type:* `boolean()`, *default:* `nil`) - Whether this placement group is archived.
  *   `campaignId` (*type:* `String.t`, *default:* `nil`) - Campaign ID of this placement group. This field is required on insertion.
  *   `campaignIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V33.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the campaign. This is a read-only, auto-generated field.
  *   `childPlacementIds` (*type:* `list(String.t)`, *default:* `nil`) - IDs of placements which are assigned to this placement group. This is a read-only, auto-generated field.
  *   `comment` (*type:* `String.t`, *default:* `nil`) - Comments for this placement group.
  *   `contentCategoryId` (*type:* `String.t`, *default:* `nil`) - ID of the content category assigned to this placement group.
  *   `createInfo` (*type:* `GoogleApi.DFAReporting.V33.Model.LastModifiedInfo.t`, *default:* `nil`) - Information about the creation of this placement group. This is a read-only field.
  *   `directorySiteId` (*type:* `String.t`, *default:* `nil`) - Directory site ID associated with this placement group. On insert, you must set either this field or the site_id field to specify the site associated with this placement group. This is a required field that is read-only after insertion.
  *   `directorySiteIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V33.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the directory site. This is a read-only, auto-generated field.
  *   `externalId` (*type:* `String.t`, *default:* `nil`) - External ID for this placement.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this placement group. This is a read-only, auto-generated field.
  *   `idDimensionValue` (*type:* `GoogleApi.DFAReporting.V33.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of this placement group. This is a read-only, auto-generated field.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#placementGroup".
  *   `lastModifiedInfo` (*type:* `GoogleApi.DFAReporting.V33.Model.LastModifiedInfo.t`, *default:* `nil`) - Information about the most recent modification of this placement group. This is a read-only field.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this placement group. This is a required field and must be less than 256 characters long.
  *   `placementGroupType` (*type:* `String.t`, *default:* `nil`) - Type of this placement group. A package is a simple group of placements that acts as a single pricing point for a group of tags. A roadblock is a group of placements that not only acts as a single pricing point, but also assumes that all the tags in it will be served at the same time. A roadblock requires one of its assigned placements to be marked as primary for reporting. This field is required on insertion.
  *   `placementStrategyId` (*type:* `String.t`, *default:* `nil`) - ID of the placement strategy assigned to this placement group.
  *   `pricingSchedule` (*type:* `GoogleApi.DFAReporting.V33.Model.PricingSchedule.t`, *default:* `nil`) - Pricing schedule of this placement group. This field is required on insertion.
  *   `primaryPlacementId` (*type:* `String.t`, *default:* `nil`) - ID of the primary placement, used to calculate the media cost of a roadblock (placement group). Modifying this field will automatically modify the primary field on all affected roadblock child placements.
  *   `primaryPlacementIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V33.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the primary placement. This is a read-only, auto-generated field.
  *   `siteId` (*type:* `String.t`, *default:* `nil`) - Site ID associated with this placement group. On insert, you must set either this field or the directorySiteId field to specify the site associated with this placement group. This is a required field that is read-only after insertion.
  *   `siteIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V33.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the site. This is a read-only, auto-generated field.
  *   `subaccountId` (*type:* `String.t`, *default:* `nil`) - Subaccount ID of this placement group. This is a read-only field that can be left blank.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :advertiserId => String.t() | nil,
          :advertiserIdDimensionValue =>
            GoogleApi.DFAReporting.V33.Model.DimensionValue.t() | nil,
          :archived => boolean() | nil,
          :campaignId => String.t() | nil,
          :campaignIdDimensionValue => GoogleApi.DFAReporting.V33.Model.DimensionValue.t() | nil,
          :childPlacementIds => list(String.t()) | nil,
          :comment => String.t() | nil,
          :contentCategoryId => String.t() | nil,
          :createInfo => GoogleApi.DFAReporting.V33.Model.LastModifiedInfo.t() | nil,
          :directorySiteId => String.t() | nil,
          :directorySiteIdDimensionValue =>
            GoogleApi.DFAReporting.V33.Model.DimensionValue.t() | nil,
          :externalId => String.t() | nil,
          :id => String.t() | nil,
          :idDimensionValue => GoogleApi.DFAReporting.V33.Model.DimensionValue.t() | nil,
          :kind => String.t() | nil,
          :lastModifiedInfo => GoogleApi.DFAReporting.V33.Model.LastModifiedInfo.t() | nil,
          :name => String.t() | nil,
          :placementGroupType => String.t() | nil,
          :placementStrategyId => String.t() | nil,
          :pricingSchedule => GoogleApi.DFAReporting.V33.Model.PricingSchedule.t() | nil,
          :primaryPlacementId => String.t() | nil,
          :primaryPlacementIdDimensionValue =>
            GoogleApi.DFAReporting.V33.Model.DimensionValue.t() | nil,
          :siteId => String.t() | nil,
          :siteIdDimensionValue => GoogleApi.DFAReporting.V33.Model.DimensionValue.t() | nil,
          :subaccountId => String.t() | nil
        }

  field(:accountId)
  field(:advertiserId)
  field(:advertiserIdDimensionValue, as: GoogleApi.DFAReporting.V33.Model.DimensionValue)
  field(:archived)
  field(:campaignId)
  field(:campaignIdDimensionValue, as: GoogleApi.DFAReporting.V33.Model.DimensionValue)
  field(:childPlacementIds, type: :list)
  field(:comment)
  field(:contentCategoryId)
  field(:createInfo, as: GoogleApi.DFAReporting.V33.Model.LastModifiedInfo)
  field(:directorySiteId)
  field(:directorySiteIdDimensionValue, as: GoogleApi.DFAReporting.V33.Model.DimensionValue)
  field(:externalId)
  field(:id)
  field(:idDimensionValue, as: GoogleApi.DFAReporting.V33.Model.DimensionValue)
  field(:kind)
  field(:lastModifiedInfo, as: GoogleApi.DFAReporting.V33.Model.LastModifiedInfo)
  field(:name)
  field(:placementGroupType)
  field(:placementStrategyId)
  field(:pricingSchedule, as: GoogleApi.DFAReporting.V33.Model.PricingSchedule)
  field(:primaryPlacementId)
  field(:primaryPlacementIdDimensionValue, as: GoogleApi.DFAReporting.V33.Model.DimensionValue)
  field(:siteId)
  field(:siteIdDimensionValue, as: GoogleApi.DFAReporting.V33.Model.DimensionValue)
  field(:subaccountId)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.PlacementGroup do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.PlacementGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.PlacementGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
