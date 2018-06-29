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

defmodule GoogleApi.AdExchangeBuyer.V14.Api.Budget do
  @moduledoc """
  API calls for all endpoints tagged `Budget`.
  """

  alias GoogleApi.AdExchangeBuyer.V14.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Returns the budget information for the adgroup specified by the accountId and billingId.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - account_id (String.t): The account id to get the budget information for.
  - billing_id (String.t): The billing id to get the budget information for.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.Budget{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_budget_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.Budget.t()} | {:error, Tesla.Env.t()}
  def adexchangebuyer_budget_get(connection, account_id, billing_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/billinginfo/{accountId}/{billingId}", %{
        "accountId" => URI.encode_www_form(account_id),
        "billingId" => URI.encode_www_form(billing_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdExchangeBuyer.V14.Model.Budget{})
  end

  @doc """
  Updates the budget amount for the budget of the adgroup specified by the accountId and billingId, with the budget amount in the request. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - account_id (String.t): The account id associated with the budget being updated.
  - billing_id (String.t): The billing id associated with the budget being updated.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Budget): 

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.Budget{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_budget_patch(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.Budget.t()} | {:error, Tesla.Env.t()}
  def adexchangebuyer_budget_patch(connection, account_id, billing_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/billinginfo/{accountId}/{billingId}", %{
        "accountId" => URI.encode_www_form(account_id),
        "billingId" => URI.encode_www_form(billing_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdExchangeBuyer.V14.Model.Budget{})
  end

  @doc """
  Updates the budget amount for the budget of the adgroup specified by the accountId and billingId, with the budget amount in the request.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - account_id (String.t): The account id associated with the budget being updated.
  - billing_id (String.t): The billing id associated with the budget being updated.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Budget): 

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.Budget{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_budget_update(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.Budget.t()} | {:error, Tesla.Env.t()}
  def adexchangebuyer_budget_update(connection, account_id, billing_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/billinginfo/{accountId}/{billingId}", %{
        "accountId" => URI.encode_www_form(account_id),
        "billingId" => URI.encode_www_form(billing_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdExchangeBuyer.V14.Model.Budget{})
  end
end
