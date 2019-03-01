defmodule Hw06Web do

  def controller do
    quote do
      use Phoenix.Controller, namespace: Hw06Web

      import Plug.Conn
      import Hw06Web.Gettext
      alias Hw06Web.Router.Helpers, as: Routes
    end
  end

  def view do
    quote do
      use Phoenix.View,
        root: "lib/hw06_web/templates",
        namespace: Hw06Web

      # Import convenience functions from controllers
      import Phoenix.Controller, only: [get_flash: 1, get_flash: 2, view_module: 1]

      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML

      import Hw06Web.ErrorHelpers
      import Hw06Web.Gettext
      alias Hw06Web.Router.Helpers, as: Routes
    end
  end

  def router do
    quote do
      use Phoenix.Router
      import Plug.Conn
      import Phoenix.Controller
    end
  end

  def channel do
    quote do
      use Phoenix.Channel
      import Hw06Web.Gettext
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
