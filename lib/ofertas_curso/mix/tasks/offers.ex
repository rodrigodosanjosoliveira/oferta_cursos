defmodule Mix.Tasks.Offers do
  use Mix.Task

  def run(_) do
    Application.ensure_all_started(:ofertas_curso)

    offers =
      "db.json"
      |> File.read!()
      |> Jason.decode!()

    Mongo.insert_many!(:mongo, "offers", offers)
  end
end
