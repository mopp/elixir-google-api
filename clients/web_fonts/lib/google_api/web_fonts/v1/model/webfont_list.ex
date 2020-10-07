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

defmodule GoogleApi.WebFonts.V1.Model.WebfontList do
  @moduledoc """
  Response containing the list of fonts currently served by the Google Fonts API.

  ## Attributes

  *   `items` (*type:* `list(GoogleApi.WebFonts.V1.Model.Webfont.t)`, *default:* `nil`) - The list of fonts currently served by the Google Fonts API.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This kind represents a list of webfont objects in the webfonts service.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.WebFonts.V1.Model.Webfont.t()),
          :kind => String.t()
        }

  field(:items, as: GoogleApi.WebFonts.V1.Model.Webfont, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.WebFonts.V1.Model.WebfontList do
  def decode(value, options) do
    GoogleApi.WebFonts.V1.Model.WebfontList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WebFonts.V1.Model.WebfontList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end