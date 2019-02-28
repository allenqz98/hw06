defmodule Hw06.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :title, :string
      add :decription, :string
      add :completed, :boolean, default: false, null: false

      timestamps()
    end

  end
end
