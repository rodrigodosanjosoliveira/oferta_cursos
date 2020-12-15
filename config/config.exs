# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :ofertas_curso, OfertasCursoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BZE7XKXVqyJoz+FRa71dxB2nEiGo+yhZ79KpsCA3/clg0RmXDR7RAO9VeCp074lN",
  render_errors: [view: OfertasCursoWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: OfertasCurso.PubSub,
  live_view: [signing_salt: "Z0y5B5vK"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
