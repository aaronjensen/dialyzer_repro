# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :dialyzer_repro,
  ecto_repos: [DialyzerRepro.Repo]

# Configures the endpoint
config :dialyzer_repro, DialyzerRepro.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QOOP2H697SeZ7fIa67Q0DoGgCxLUJ2eb6QED7QqQDHIaLmlGLmOrd3HO/LquHXT+",
  render_errors: [view: DialyzerRepro.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DialyzerRepro.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
