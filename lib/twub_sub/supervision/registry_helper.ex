defmodule TwubSub.Supervision.RegistryHelper do
  @moduledoc """
  Helper functions for registries
  """

  def __using__(_opts) do
    quote do
      def via_tuple(registry, args) do
        {:via, Registry, {registry, args}}
      end
    end
  end
end
