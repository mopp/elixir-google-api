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

defmodule GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1BookingLead do
  @moduledoc """
  Container for booking lead specific information.

  ## Attributes

  *   `bookingAppointmentTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp of when service is provided by advertiser.
  *   `consumerEmail` (*type:* `String.t`, *default:* `nil`) - Consumer email associated with the booking lead.
  *   `consumerPhoneNumber` (*type:* `String.t`, *default:* `nil`) - Consumer phone number associated with the booking lead.
  *   `customerName` (*type:* `String.t`, *default:* `nil`) - Name of the customer who created the lead.
  *   `jobType` (*type:* `String.t`, *default:* `nil`) - The job type of the specified lead.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bookingAppointmentTimestamp => DateTime.t() | nil,
          :consumerEmail => String.t() | nil,
          :consumerPhoneNumber => String.t() | nil,
          :customerName => String.t() | nil,
          :jobType => String.t() | nil
        }

  field(:bookingAppointmentTimestamp, as: DateTime)
  field(:consumerEmail)
  field(:consumerPhoneNumber)
  field(:customerName)
  field(:jobType)
end

defimpl Poison.Decoder,
  for: GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1BookingLead do
  def decode(value, options) do
    GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1BookingLead.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1BookingLead do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
