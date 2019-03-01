defmodule Hw06.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset


  schema "tasks" do
    field :completed, :boolean, default: false
    field :decription, :string
    field :title, :string
    field :time, :integer
    belongs_to :user, Hw06.Users.User

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:title, :decription, :completed, :time, :user_id])
    |> validate_required([:title, :decription, :completed])
  end
end
