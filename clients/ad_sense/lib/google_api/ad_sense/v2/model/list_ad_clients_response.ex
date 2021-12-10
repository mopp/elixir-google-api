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

defmodule GoogleApi.AdSense.V2.Model.ListAdClientsResponse do
  @moduledoc """
  Response definition for the ad client list rpc.

  ## Attributes

  *   `adClients` (*type:* `list(GoogleApi.AdSense.V2.Model.AdClient.t)`, *default:* `nil`) - The ad clients returned in this list response.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Continuation token used to page through ad clients. To retrieve the next page of the results, set the next request's "page_token" value to this.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adClients => list(GoogleApi.AdSense.V2.Model.AdClient.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:adClients, as: GoogleApi.AdSense.V2.Model.AdClient, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.AdSense.V2.Model.ListAdClientsResponse do
  def decode(value, options) do
    GoogleApi.AdSense.V2.Model.ListAdClientsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSense.V2.Model.ListAdClientsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
