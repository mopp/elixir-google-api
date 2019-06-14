# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.CivicInfo.V2.Model.Election do
  @moduledoc """
  Information about the election that was queried.

  ## Attributes

  - electionDay (String.t): Day of the election in YYYY-MM-DD format. Defaults to `nil`.
  - id (String.t): The unique ID of this election. Defaults to `nil`.
  - name (String.t): A displayable name for the election. Defaults to `nil`.
  - ocdDivisionId (String.t): The political division of the election. Represented as an OCD Division ID. Voters within these political jurisdictions are covered by this election. This is typically a state such as ocd-division/country:us/state:ca or for the midterms or general election the entire US (i.e. ocd-division/country:us). Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :electionDay => String.t(),
          :id => String.t(),
          :name => String.t(),
          :ocdDivisionId => String.t()
        }

  field(:electionDay)
  field(:id)
  field(:name)
  field(:ocdDivisionId)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.Election do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.Election.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.Election do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
