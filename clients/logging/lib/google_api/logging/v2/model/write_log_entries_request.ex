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

defmodule GoogleApi.Logging.V2.Model.WriteLogEntriesRequest do
  @moduledoc """
  The parameters to WriteLogEntries.

  ## Attributes

  *   `dryRun` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, the request should expect normal response, but the entries won't be persisted nor exported. Useful for checking whether the logging API endpoints are working properly before sending valuable data.
  *   `entries` (*type:* `list(GoogleApi.Logging.V2.Model.LogEntry.t)`, *default:* `nil`) - Required. The log entries to send to Logging. The order of log entries in this list does not matter. Values supplied in this method's log_name, resource, and labels fields are copied into those log entries in this list that do not include values for their corresponding fields. For more information, see the LogEntry type.If the timestamp or insert_id fields are missing in log entries, then this method supplies the current time or a unique identifier, respectively. The supplied values are chosen so that, among the log entries that did not supply their own values, the entries earlier in the list will sort before the entries later in the list. See the entries.list method.Log entries with timestamps that are more than the logs retention period (https://cloud.google.com/logging/quota-policy) in the past or more than 24 hours in the future will not be available when calling entries.list. However, those log entries can still be exported with LogSinks (https://cloud.google.com/logging/docs/api/tasks/exporting-logs).To improve throughput and to avoid exceeding the quota limit (https://cloud.google.com/logging/quota-policy) for calls to entries.write, you should try to include several log entries in this list, rather than calling this method for each individual log entry.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Default labels that are added to the labels field of all log entries in entries. If a log entry already has a label with the same key as a label in this parameter, then the log entry's label is not changed. See LogEntry.
  *   `logName` (*type:* `String.t`, *default:* `nil`) - Optional. A default log resource name that is assigned to all log entries in entries that do not specify a value for log_name: projects/[PROJECT_ID]/logs/[LOG_ID] organizations/[ORGANIZATION_ID]/logs/[LOG_ID] billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID] folders/[FOLDER_ID]/logs/[LOG_ID][LOG_ID] must be URL-encoded. For example: "projects/my-project-id/logs/syslog" "organizations/123/logs/cloudaudit.googleapis.com%2Factivity" The permission logging.logEntries.create is needed on each project, organization, billing account, or folder that is receiving new log entries, whether the resource is specified in logName or in an individual log entry.
  *   `partialSuccess` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether valid entries should be written even if some other entries fail due to INVALID_ARGUMENT or PERMISSION_DENIED errors. If any entry is not written, then the response status is the error associated with one of the failed entries and the response includes error details keyed by the entries' zero-based index in the entries.write method.
  *   `resource` (*type:* `GoogleApi.Logging.V2.Model.MonitoredResource.t`, *default:* `nil`) - Optional. A default monitored resource object that is assigned to all log entries in entries that do not specify a value for resource. Example: { "type": "gce_instance", "labels": { "zone": "us-central1-a", "instance_id": "00000000000000000000" }} See LogEntry.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dryRun => boolean() | nil,
          :entries => list(GoogleApi.Logging.V2.Model.LogEntry.t()) | nil,
          :labels => map() | nil,
          :logName => String.t() | nil,
          :partialSuccess => boolean() | nil,
          :resource => GoogleApi.Logging.V2.Model.MonitoredResource.t() | nil
        }

  field(:dryRun)
  field(:entries, as: GoogleApi.Logging.V2.Model.LogEntry, type: :list)
  field(:labels, type: :map)
  field(:logName)
  field(:partialSuccess)
  field(:resource, as: GoogleApi.Logging.V2.Model.MonitoredResource)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.WriteLogEntriesRequest do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.WriteLogEntriesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.WriteLogEntriesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
