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

defmodule GoogleApi.HealthCare.V1.Model.ExportMessagesRequest do
  @moduledoc """
  Request to schedule an export.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The end of the range in `send_time` (MSH.7, https://www.hl7.org/documentcenter/public_temp_2E58C1F9-1C23-BA17-0C6126475344DA9D/wg/conf/HL7MSH.htm) to process. If not specified, the time when the export is scheduled is used. This value has to come after the `start_time` defined below. Only messages whose `send_time` lies in the range `start_time` (inclusive) to `end_time` (exclusive) are exported.
  *   `gcsDestination` (*type:* `GoogleApi.HealthCare.V1.Model.GcsDestination.t`, *default:* `nil`) - Export to a Cloud Storage destination.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The start of the range in `send_time` (MSH.7, https://www.hl7.org/documentcenter/public_temp_2E58C1F9-1C23-BA17-0C6126475344DA9D/wg/conf/HL7MSH.htm) to process. If not specified, the UNIX epoch (1970-01-01T00:00:00Z) is used. This value has to come before the `end_time` defined below. Only messages whose `send_time` lies in the range `start_time` (inclusive) to `end_time` (exclusive) are exported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t() | nil,
          :gcsDestination => GoogleApi.HealthCare.V1.Model.GcsDestination.t() | nil,
          :startTime => DateTime.t() | nil
        }

  field(:endTime, as: DateTime)
  field(:gcsDestination, as: GoogleApi.HealthCare.V1.Model.GcsDestination)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.ExportMessagesRequest do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.ExportMessagesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.ExportMessagesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
