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

defmodule GoogleApi.File.V1.Model.HttpRequest do
  @moduledoc """
  A common proto for logging HTTP requests. Only contains semantics
  defined by the HTTP specification. Product-specific logging
  information MUST be defined in a separate message.

  ## Attributes

  *   `cacheFillBytes` (*type:* `String.t`, *default:* `nil`) - The number of HTTP response bytes inserted into cache. Set only when a
      cache fill was attempted.
  *   `cacheHit` (*type:* `boolean()`, *default:* `nil`) - Whether or not an entity was served from cache
      (with or without validation).
  *   `cacheLookup` (*type:* `boolean()`, *default:* `nil`) - Whether or not a cache lookup was attempted.
  *   `cacheValidatedWithOriginServer` (*type:* `boolean()`, *default:* `nil`) - Whether or not the response was validated with the origin server before
      being served from cache. This field is only meaningful if `cache_hit` is
      True.
  *   `latency` (*type:* `String.t`, *default:* `nil`) - The request processing latency on the server, from the time the request was
      received until the response was sent.
  *   `protocol` (*type:* `String.t`, *default:* `nil`) - Protocol used for the request. Examples: "HTTP/1.1", "HTTP/2", "websocket"
  *   `referer` (*type:* `String.t`, *default:* `nil`) - The referer URL of the request, as defined in
      [HTTP/1.1 Header Field
      Definitions](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).
  *   `remoteIp` (*type:* `String.t`, *default:* `nil`) - The IP address (IPv4 or IPv6) of the client that issued the HTTP
      request. Examples: `"192.168.1.1"`, `"FE80::0202:B3FF:FE1E:8329"`.
  *   `requestMethod` (*type:* `String.t`, *default:* `nil`) - The request method. Examples: `"GET"`, `"HEAD"`, `"PUT"`, `"POST"`.
  *   `requestSize` (*type:* `String.t`, *default:* `nil`) - The size of the HTTP request message in bytes, including the request
      headers and the request body.
  *   `requestUrl` (*type:* `String.t`, *default:* `nil`) - The scheme (http, https), the host name, the path, and the query
      portion of the URL that was requested.
      Example: `"http://example.com/some/info?color=red"`.
  *   `responseSize` (*type:* `String.t`, *default:* `nil`) - The size of the HTTP response message sent back to the client, in bytes,
      including the response headers and the response body.
  *   `serverIp` (*type:* `String.t`, *default:* `nil`) - The IP address (IPv4 or IPv6) of the origin server that the request was
      sent to.
  *   `status` (*type:* `integer()`, *default:* `nil`) - The response code indicating the status of the response.
      Examples: 200, 404.
  *   `userAgent` (*type:* `String.t`, *default:* `nil`) - The user agent sent by the client. Example:
      `"Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Q312461; .NET
      CLR 1.0.3705)"`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cacheFillBytes => String.t(),
          :cacheHit => boolean(),
          :cacheLookup => boolean(),
          :cacheValidatedWithOriginServer => boolean(),
          :latency => String.t(),
          :protocol => String.t(),
          :referer => String.t(),
          :remoteIp => String.t(),
          :requestMethod => String.t(),
          :requestSize => String.t(),
          :requestUrl => String.t(),
          :responseSize => String.t(),
          :serverIp => String.t(),
          :status => integer(),
          :userAgent => String.t()
        }

  field(:cacheFillBytes)
  field(:cacheHit)
  field(:cacheLookup)
  field(:cacheValidatedWithOriginServer)
  field(:latency)
  field(:protocol)
  field(:referer)
  field(:remoteIp)
  field(:requestMethod)
  field(:requestSize)
  field(:requestUrl)
  field(:responseSize)
  field(:serverIp)
  field(:status)
  field(:userAgent)
end

defimpl Poison.Decoder, for: GoogleApi.File.V1.Model.HttpRequest do
  def decode(value, options) do
    GoogleApi.File.V1.Model.HttpRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.File.V1.Model.HttpRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end