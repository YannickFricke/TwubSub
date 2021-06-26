defmodule TwubSub.Auth.Helper do
  @moduledoc ~S"""
  Helper functions for URLs and other authentication stuff.
  """

  alias Plug.Conn.Query

  @spec encode_query_params(map()) :: String.t()
  def encode_query_params(params), do: Query.encode(params)
end
