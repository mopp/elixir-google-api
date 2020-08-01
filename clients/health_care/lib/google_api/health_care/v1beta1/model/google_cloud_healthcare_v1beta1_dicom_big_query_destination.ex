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

defmodule GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DicomBigQueryDestination do
  @moduledoc """
  The BigQuery table where the server writes output.

  ## Attributes

  *   `force` (*type:* `boolean()`, *default:* `nil`) - This flag is being replaced by write_disposition which provides additional
      options. force=false is equivalent to WRITE_EMPTY and force=true is
      equivalent to WRITE_TRUNCATE.
  *   `tableUri` (*type:* `String.t`, *default:* `nil`) - BigQuery URI to a table, up to 2000 characters long, in the format
      `bq://projectId.bqDatasetId.tableId`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :force => boolean(),
          :tableUri => String.t()
        }

  field(:force)
  field(:tableUri)
end

defimpl Poison.Decoder,
  for: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DicomBigQueryDestination do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DicomBigQueryDestination.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DicomBigQueryDestination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
