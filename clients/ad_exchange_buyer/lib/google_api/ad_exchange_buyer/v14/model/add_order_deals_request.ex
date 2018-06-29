# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AdExchangeBuyer.V14.Model.AddOrderDealsRequest do
  @moduledoc """


  ## Attributes

  - deals ([MarketplaceDeal]): The list of deals to add Defaults to: `null`.
  - proposalRevisionNumber (String.t): The last known proposal revision number. Defaults to: `null`.
  - updateAction (String.t): Indicates an optional action to take on the proposal Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deals => list(GoogleApi.AdExchangeBuyer.V14.Model.MarketplaceDeal.t()),
          :proposalRevisionNumber => any(),
          :updateAction => any()
        }

  field(:deals, as: GoogleApi.AdExchangeBuyer.V14.Model.MarketplaceDeal, type: :list)
  field(:proposalRevisionNumber)
  field(:updateAction)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.AddOrderDealsRequest do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.AddOrderDealsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.AddOrderDealsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
