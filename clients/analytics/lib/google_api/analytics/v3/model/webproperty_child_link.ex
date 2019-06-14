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

defmodule GoogleApi.Analytics.V3.Model.WebpropertyChildLink do
  @moduledoc """
  Child link for this web property. Points to the list of views (profiles) for this web property.

  ## Attributes

  - href (String.t): Link to the list of views (profiles) for this web property. Defaults to `nil`.
  - type (String.t): Type of the parent link. Its value is "analytics#profiles". Defaults to `analytics#profiles`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :href => String.t(),
          :type => String.t()
        }

  field(:href)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.WebpropertyChildLink do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.WebpropertyChildLink.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.WebpropertyChildLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
