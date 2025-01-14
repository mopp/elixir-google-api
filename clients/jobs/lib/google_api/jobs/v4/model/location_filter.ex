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

defmodule GoogleApi.Jobs.V4.Model.LocationFilter do
  @moduledoc """
  Geographic region of the search.

  ## Attributes

  *   `address` (*type:* `String.t`, *default:* `nil`) - The address name, such as "Mountain View" or "Bay Area".
  *   `distanceInMiles` (*type:* `float()`, *default:* `nil`) - The distance_in_miles is applied when the location being searched for is identified as a city or smaller. This field is ignored if the location being searched for is a state or larger.
  *   `latLng` (*type:* `GoogleApi.Jobs.V4.Model.LatLng.t`, *default:* `nil`) - The latitude and longitude of the geographic center to search from. This field is ignored if `address` is provided.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - CLDR region code of the country/region. This field may be used in two ways: 1) If telecommute preference is not set, this field is used address ambiguity of the user-input address. For example, "Liverpool" may refer to "Liverpool, NY, US" or "Liverpool, UK". This region code biases the address resolution toward a specific country or territory. If this field is not set, address resolution is biased toward the United States by default. 2) If telecommute preference is set to TELECOMMUTE_ALLOWED, the telecommute location filter will be limited to the region specified in this field. If this field is not set, the telecommute job locations will not be See https://unicode-org.github.io/cldr-staging/charts/latest/supplemental/territory_information.html for details. Example: "CH" for Switzerland.
  *   `telecommutePreference` (*type:* `String.t`, *default:* `nil`) - Allows the client to return jobs without a set location, specifically, telecommuting jobs (telecommuting is considered by the service as a special location. Job.posting_region indicates if a job permits telecommuting. If this field is set to TelecommutePreference.TELECOMMUTE_ALLOWED, telecommuting jobs are searched, and address and lat_lng are ignored. If not set or set to TelecommutePreference.TELECOMMUTE_EXCLUDED, telecommute job are not searched. This filter can be used by itself to search exclusively for telecommuting jobs, or it can be combined with another location filter to search for a combination of job locations, such as "Mountain View" or "telecommuting" jobs. However, when used in combination with other location filters, telecommuting jobs can be treated as less relevant than other jobs in the search response. This field is only used for job search requests.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => String.t() | nil,
          :distanceInMiles => float() | nil,
          :latLng => GoogleApi.Jobs.V4.Model.LatLng.t() | nil,
          :regionCode => String.t() | nil,
          :telecommutePreference => String.t() | nil
        }

  field(:address)
  field(:distanceInMiles)
  field(:latLng, as: GoogleApi.Jobs.V4.Model.LatLng)
  field(:regionCode)
  field(:telecommutePreference)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V4.Model.LocationFilter do
  def decode(value, options) do
    GoogleApi.Jobs.V4.Model.LocationFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V4.Model.LocationFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
