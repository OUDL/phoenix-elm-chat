ExUnit.start

Mix.Task.run "ecto.create", ~w(-r ChatTutor.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r ChatTutor.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(ChatTutor.Repo)

