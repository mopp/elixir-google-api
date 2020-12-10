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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ExportDataRequest do
  @moduledoc """
  Request message for ExportData API.

  ## Attributes

  *   `annotatedDataset` (*type:* `String.t`, *default:* `nil`) - Required. Annotated dataset resource name. DataItem in Dataset and their annotations in specified annotated dataset will be exported. It's in format of projects/{project_id}/datasets/{dataset_id}/annotatedDatasets/ {annotated_dataset_id}
  *   `filter` (*type:* `String.t`, *default:* `nil`) - Optional. Filter is not supported at this moment.
  *   `outputConfig` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1OutputConfig.t`, *default:* `nil`) - Required. Specify the output destination.
  *   `userEmailAddress` (*type:* `String.t`, *default:* `nil`) - Email of the user who started the export task and should be notified by email. If empty no notification will be sent.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotatedDataset => String.t(),
          :filter => String.t(),
          :outputConfig =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1OutputConfig.t(),
          :userEmailAddress => String.t()
        }

  field(:annotatedDataset)
  field(:filter)

  field(:outputConfig,
    as: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1OutputConfig
  )

  field(:userEmailAddress)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ExportDataRequest do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ExportDataRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ExportDataRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end