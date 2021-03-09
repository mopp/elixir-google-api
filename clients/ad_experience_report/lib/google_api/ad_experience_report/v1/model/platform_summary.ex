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

defmodule GoogleApi.AdExperienceReport.V1.Model.PlatformSummary do
  @moduledoc """
  A site's Ad Experience Report summary on a single platform.

  ## Attributes

  *   `betterAdsStatus` (*type:* `String.t`, *default:* `nil`) - The site's Ad Experience Report status on this platform.
  *   `enforcementTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which [enforcement](https://support.google.com/webtools/answer/7308033) against the site began or will begin on this platform. Not set when the filter_status is OFF.
  *   `filterStatus` (*type:* `String.t`, *default:* `nil`) - The site's [enforcement status](https://support.google.com/webtools/answer/7308033) on this platform.
  *   `lastChangeTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the site's status last changed on this platform.
  *   `region` (*type:* `list(String.t)`, *default:* `nil`) - The site's regions on this platform. No longer populated, because there is no longer any semantic difference between sites in different regions.
  *   `reportUrl` (*type:* `String.t`, *default:* `nil`) - A link to the full Ad Experience Report for the site on this platform.. Not set in ViolatingSitesResponse. Note that you must complete the [Search Console verification process](https://support.google.com/webmasters/answer/9008080) for the site before you can access the full report.
  *   `underReview` (*type:* `boolean()`, *default:* `nil`) - Whether the site is currently under review on this platform.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :betterAdsStatus => String.t() | nil,
          :enforcementTime => DateTime.t() | nil,
          :filterStatus => String.t() | nil,
          :lastChangeTime => DateTime.t() | nil,
          :region => list(String.t()) | nil,
          :reportUrl => String.t() | nil,
          :underReview => boolean() | nil
        }

  field(:betterAdsStatus)
  field(:enforcementTime, as: DateTime)
  field(:filterStatus)
  field(:lastChangeTime, as: DateTime)
  field(:region, type: :list)
  field(:reportUrl)
  field(:underReview)
end

defimpl Poison.Decoder, for: GoogleApi.AdExperienceReport.V1.Model.PlatformSummary do
  def decode(value, options) do
    GoogleApi.AdExperienceReport.V1.Model.PlatformSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExperienceReport.V1.Model.PlatformSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
