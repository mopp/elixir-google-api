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

defmodule GoogleApi.AdSense.V2.Model.UrlChannel do
  @moduledoc """
  Representation of a URL channel. URL channels allow you to track the performance of particular pages in your site; see [URL channels](https://support.google.com/adsense/answer/2923836) for more information.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of the URL channel. Format: accounts/{account}/adclients/{adclient}/urlchannels/{urlchannel}
  *   `reportingDimensionId` (*type:* `String.t`, *default:* `nil`) - Output only. Unique ID of the custom channel as used in the `URL_CHANNEL_ID` reporting dimension.
  *   `uriPattern` (*type:* `String.t`, *default:* `nil`) - URI pattern of the channel. Does not include "http://" or "https://". Example: www.example.com/home
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :reportingDimensionId => String.t() | nil,
          :uriPattern => String.t() | nil
        }

  field(:name)
  field(:reportingDimensionId)
  field(:uriPattern)
end

defimpl Poison.Decoder, for: GoogleApi.AdSense.V2.Model.UrlChannel do
  def decode(value, options) do
    GoogleApi.AdSense.V2.Model.UrlChannel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSense.V2.Model.UrlChannel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
