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

defmodule GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1Workload do
  @moduledoc """
  An Workload object for managing highly regulated workloads of cloud customers.

  ## Attributes

  *   `billingAccount` (*type:* `String.t`, *default:* `nil`) - Required. Input only. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  *   `cjisSettings` (*type:* `GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings.t`, *default:* `nil`) - Required. Input only. Immutable. Settings specific to resources needed for CJIS.
  *   `complianceRegime` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. Compliance Regime associated with this workload.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Immutable. The Workload creation timestamp.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. ETag of the workload, it is calculated on the basis of the Workload contents. It will be used in Update & Delete operations.
  *   `fedrampHighSettings` (*type:* `GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings.t`, *default:* `nil`) - Required. Input only. Immutable. Settings specific to resources needed for FedRAMP High.
  *   `fedrampModerateSettings` (*type:* `GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings.t`, *default:* `nil`) - Required. Input only. Immutable. Settings specific to resources needed for FedRAMP Moderate.
  *   `il4Settings` (*type:* `GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings.t`, *default:* `nil`) - Required. Input only. Immutable. Settings specific to resources needed for IL4.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Labels applied to the workload.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Optional. The resource name of the workload. Format: organizations/{organization}/locations/{location}/workloads/{workload} Read-only.
  *   `resources` (*type:* `list(GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo.t)`, *default:* `nil`) - Output only. The resources associated with this workload. These resources will be created when creating the workload. If any of the projects already exist, the workload creation will fail. Always read only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :billingAccount => String.t(),
          :cjisSettings =>
            GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings.t(),
          :complianceRegime => String.t(),
          :createTime => DateTime.t(),
          :displayName => String.t(),
          :etag => String.t(),
          :fedrampHighSettings =>
            GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings.t(),
          :fedrampModerateSettings =>
            GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings.t(),
          :il4Settings =>
            GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings.t(),
          :labels => map(),
          :name => String.t(),
          :resources =>
            list(
              GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo.t()
            )
        }

  field(:billingAccount)

  field(:cjisSettings,
    as:
      GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1WorkloadCJISSettings
  )

  field(:complianceRegime)
  field(:createTime, as: DateTime)
  field(:displayName)
  field(:etag)

  field(:fedrampHighSettings,
    as:
      GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings
  )

  field(:fedrampModerateSettings,
    as:
      GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings
  )

  field(:il4Settings,
    as:
      GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings
  )

  field(:labels, type: :map)
  field(:name)

  field(:resources,
    as:
      GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1Workload do
  def decode(value, options) do
    GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1Workload.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AssuredWorkloads.V1beta1.Model.GoogleCloudAssuredworkloadsV1beta1Workload do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end