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

defmodule GoogleApi.DoubleClickBidManager.V1.Model.ListQueriesResponse do
  @moduledoc """
  List queries response.

  ## Attributes

  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;doubleclickbidmanager#listQueriesResponse\&quot;. Defaults to: `null`.
  - queries ([Query]): Retrieved queries. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => any(),
          :queries => list(GoogleApi.DoubleClickBidManager.V1.Model.Query.t())
        }

  field(:kind)
  field(:queries, as: GoogleApi.DoubleClickBidManager.V1.Model.Query, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V1.Model.ListQueriesResponse do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V1.Model.ListQueriesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V1.Model.ListQueriesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
