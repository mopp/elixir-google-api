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

defmodule GoogleApi.DFAReporting.V33.Model.PostalCode do
  @moduledoc """
  Contains information about a postal code that can be targeted by ads.

  ## Attributes

  *   `code` (*type:* `String.t`, *default:* `nil`) - Postal code. This is equivalent to the id field.
  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - Country code of the country to which this postal code belongs.
  *   `countryDartId` (*type:* `String.t`, *default:* `nil`) - DART ID of the country to which this postal code belongs.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this postal code.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#postalCode".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => String.t() | nil,
          :countryCode => String.t() | nil,
          :countryDartId => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil
        }

  field(:code)
  field(:countryCode)
  field(:countryDartId)
  field(:id)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.PostalCode do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.PostalCode.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.PostalCode do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
