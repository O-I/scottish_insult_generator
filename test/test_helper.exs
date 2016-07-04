ExUnit.start

Mix.Task.run "ecto.create", ~w(-r ScottishInsultGenerator.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r ScottishInsultGenerator.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(ScottishInsultGenerator.Repo)

