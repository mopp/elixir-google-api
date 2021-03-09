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

defmodule GoogleApi.DFAReporting.V34.Model.ThirdPartyAuthenticationToken do
  @moduledoc """
  Third Party Authentication Token

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the third-party authentication token.
  *   `value` (*type:* `String.t`, *default:* `nil`) - Value of the third-party authentication token. This is a read-only, auto-generated field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :value => String.t() | nil
        }

  field(:name)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.ThirdPartyAuthenticationToken do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.ThirdPartyAuthenticationToken.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.ThirdPartyAuthenticationToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
