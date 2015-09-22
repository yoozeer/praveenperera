# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config


# Configure using HAML
config :phoenix, :template_engines,
  haml: PhoenixHaml.Engine

# Configures the endpoint
config :praveenperera, Praveenperera.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "xPcRjWlVU8RRMkQXNXp4zLkP0mfG8hkhVh6/gJ1epoAdsT9HmmYDRyYAWvoeIren",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Praveenperera.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

