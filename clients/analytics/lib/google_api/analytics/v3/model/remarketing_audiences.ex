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

defmodule GoogleApi.Analytics.V3.Model.RemarketingAudiences do
  @moduledoc """
  A remarketing audience collection lists Analytics remarketing audiences to which the user has access. Each resource in the collection corresponds to a single Analytics remarketing audience.

  ## Attributes

  - items (list(GoogleApi.Analytics.V3.Model.RemarketingAudience.t)): A list of remarketing audiences. Defaults to `nil`.
  - itemsPerPage (integer()): The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. Defaults to `nil`.
  - kind (String.t): Collection type. Defaults to `analytics#remarketingAudiences`.
  - nextLink (String.t): Link to next page for this remarketing audience collection. Defaults to `nil`.
  - previousLink (String.t): Link to previous page for this view (profile) collection. Defaults to `nil`.
  - startIndex (integer()): The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. Defaults to `nil`.
  - totalResults (integer()): The total number of results for the query, regardless of the number of results in the response. Defaults to `nil`.
  - username (String.t): Email ID of the authenticated user Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.Analytics.V3.Model.RemarketingAudience.t()),
          :itemsPerPage => integer(),
          :kind => String.t(),
          :nextLink => String.t(),
          :previousLink => String.t(),
          :startIndex => integer(),
          :totalResults => integer(),
          :username => String.t()
        }

  field(:items, as: GoogleApi.Analytics.V3.Model.RemarketingAudience, type: :list)
  field(:itemsPerPage)
  field(:kind)
  field(:nextLink)
  field(:previousLink)
  field(:startIndex)
  field(:totalResults)
  field(:username)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.RemarketingAudiences do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.RemarketingAudiences.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.RemarketingAudiences do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
