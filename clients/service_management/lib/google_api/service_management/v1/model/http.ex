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

defmodule GoogleApi.ServiceManagement.V1.Model.Http do
  @moduledoc """
  Defines the HTTP configuration for an API service. It contains a list of HttpRule, each specifying the mapping of an RPC method to one or more HTTP REST API methods.

  ## Attributes

  *   `fullyDecodeReservedExpansion` (*type:* `boolean()`, *default:* `nil`) - When set to true, URL path parameters will be fully URI-decoded except in cases of single segment matches in reserved expansion, where "%2F" will be left encoded. The default behavior is to not decode RFC 6570 reserved characters in multi segment matches.
  *   `rules` (*type:* `list(GoogleApi.ServiceManagement.V1.Model.HttpRule.t)`, *default:* `nil`) - A list of HTTP configuration rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fullyDecodeReservedExpansion => boolean(),
          :rules => list(GoogleApi.ServiceManagement.V1.Model.HttpRule.t())
        }

  field(:fullyDecodeReservedExpansion)
  field(:rules, as: GoogleApi.ServiceManagement.V1.Model.HttpRule, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.Http do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.Http.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.Http do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
