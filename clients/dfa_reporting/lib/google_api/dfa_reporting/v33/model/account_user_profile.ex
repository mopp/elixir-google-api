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

defmodule GoogleApi.DFAReporting.V33.Model.AccountUserProfile do
  @moduledoc """
  AccountUserProfiles contains properties of a Campaign Manager user profile. This resource is specifically for managing user profiles, whereas UserProfiles is for accessing the API.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID of the user profile. This is a read-only field that can be left blank.
  *   `active` (*type:* `boolean()`, *default:* `nil`) - Whether this user profile is active. This defaults to false, and must be set true on insert for the user profile to be usable.
  *   `advertiserFilter` (*type:* `GoogleApi.DFAReporting.V33.Model.ObjectFilter.t`, *default:* `nil`) - Filter that describes which advertisers are visible to the user profile.
  *   `campaignFilter` (*type:* `GoogleApi.DFAReporting.V33.Model.ObjectFilter.t`, *default:* `nil`) - Filter that describes which campaigns are visible to the user profile.
  *   `comments` (*type:* `String.t`, *default:* `nil`) - Comments for this user profile.
  *   `email` (*type:* `String.t`, *default:* `nil`) - Email of the user profile. The email addresss must be linked to a Google Account. This field is required on insertion and is read-only after insertion.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of the user profile. This is a read-only, auto-generated field.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#accountUserProfile".
  *   `locale` (*type:* `String.t`, *default:* `nil`) - Locale of the user profile. This is a required field. Acceptable values are: - "cs" (Czech) - "de" (German) - "en" (English) - "en-GB" (English United Kingdom) - "es" (Spanish) - "fr" (French) - "it" (Italian) - "ja" (Japanese) - "ko" (Korean) - "pl" (Polish) - "pt-BR" (Portuguese Brazil) - "ru" (Russian) - "sv" (Swedish) - "tr" (Turkish) - "zh-CN" (Chinese Simplified) - "zh-TW" (Chinese Traditional) 
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the user profile. This is a required field. Must be less than 64 characters long, must be globally unique, and cannot contain whitespace or any of the following characters: "&;<>"#%,".
  *   `siteFilter` (*type:* `GoogleApi.DFAReporting.V33.Model.ObjectFilter.t`, *default:* `nil`) - Filter that describes which sites are visible to the user profile.
  *   `subaccountId` (*type:* `String.t`, *default:* `nil`) - Subaccount ID of the user profile. This is a read-only field that can be left blank.
  *   `traffickerType` (*type:* `String.t`, *default:* `nil`) - Trafficker type of this user profile. This is a read-only field.
  *   `userAccessType` (*type:* `String.t`, *default:* `nil`) - User type of the user profile. This is a read-only field that can be left blank.
  *   `userRoleFilter` (*type:* `GoogleApi.DFAReporting.V33.Model.ObjectFilter.t`, *default:* `nil`) - Filter that describes which user roles are visible to the user profile.
  *   `userRoleId` (*type:* `String.t`, *default:* `nil`) - User role ID of the user profile. This is a required field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :active => boolean() | nil,
          :advertiserFilter => GoogleApi.DFAReporting.V33.Model.ObjectFilter.t() | nil,
          :campaignFilter => GoogleApi.DFAReporting.V33.Model.ObjectFilter.t() | nil,
          :comments => String.t() | nil,
          :email => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :locale => String.t() | nil,
          :name => String.t() | nil,
          :siteFilter => GoogleApi.DFAReporting.V33.Model.ObjectFilter.t() | nil,
          :subaccountId => String.t() | nil,
          :traffickerType => String.t() | nil,
          :userAccessType => String.t() | nil,
          :userRoleFilter => GoogleApi.DFAReporting.V33.Model.ObjectFilter.t() | nil,
          :userRoleId => String.t() | nil
        }

  field(:accountId)
  field(:active)
  field(:advertiserFilter, as: GoogleApi.DFAReporting.V33.Model.ObjectFilter)
  field(:campaignFilter, as: GoogleApi.DFAReporting.V33.Model.ObjectFilter)
  field(:comments)
  field(:email)
  field(:id)
  field(:kind)
  field(:locale)
  field(:name)
  field(:siteFilter, as: GoogleApi.DFAReporting.V33.Model.ObjectFilter)
  field(:subaccountId)
  field(:traffickerType)
  field(:userAccessType)
  field(:userRoleFilter, as: GoogleApi.DFAReporting.V33.Model.ObjectFilter)
  field(:userRoleId)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.AccountUserProfile do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.AccountUserProfile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.AccountUserProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
