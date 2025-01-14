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

defmodule GoogleApi.IDS.V1.Model.Endpoint do
  @moduledoc """
  Endpoint describes a single IDS endpoint. It defines a forwarding rule to which packets can be sent for IDS inspection.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The create time timestamp.
  *   `description` (*type:* `String.t`, *default:* `nil`) - User-provided description of the endpoint
  *   `endpointForwardingRule` (*type:* `String.t`, *default:* `nil`) - Output only. The fully qualified URL of the endpoint's ILB Forwarding Rule.
  *   `endpointIp` (*type:* `String.t`, *default:* `nil`) - Output only. The IP address of the IDS Endpoint's ILB.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels of the endpoint.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the endpoint.
  *   `network` (*type:* `String.t`, *default:* `nil`) - Required. The fully qualified URL of the network to which the IDS Endpoint is attached.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - Required. Lowest threat severity that this endpoint will alert on.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Current state of the endpoint.
  *   `trafficLogs` (*type:* `boolean()`, *default:* `nil`) - Whether the endpoint should report traffic logs in addition to threat logs.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The update time timestamp.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :endpointForwardingRule => String.t() | nil,
          :endpointIp => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :severity => String.t() | nil,
          :state => String.t() | nil,
          :trafficLogs => boolean() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:endpointForwardingRule)
  field(:endpointIp)
  field(:labels, type: :map)
  field(:name)
  field(:network)
  field(:severity)
  field(:state)
  field(:trafficLogs)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.IDS.V1.Model.Endpoint do
  def decode(value, options) do
    GoogleApi.IDS.V1.Model.Endpoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IDS.V1.Model.Endpoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
