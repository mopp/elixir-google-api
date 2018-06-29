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

defmodule GoogleApi.AdSense.V14.Model.AdUnitContentAdsSettings do
  @moduledoc """
  Settings specific to content ads (AFC) and highend mobile content ads (AFMC - deprecated).

  ## Attributes

  - backupOption (AdUnitContentAdsSettingsBackupOption):  Defaults to: `null`.
  - size (String.t): Size of this ad unit. Defaults to: `null`.
  - type (String.t): Type of this ad unit. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupOption => GoogleApi.AdSense.V14.Model.AdUnitContentAdsSettingsBackupOption.t(),
          :size => any(),
          :type => any()
        }

  field(:backupOption, as: GoogleApi.AdSense.V14.Model.AdUnitContentAdsSettingsBackupOption)
  field(:size)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.AdSense.V14.Model.AdUnitContentAdsSettings do
  def decode(value, options) do
    GoogleApi.AdSense.V14.Model.AdUnitContentAdsSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSense.V14.Model.AdUnitContentAdsSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
