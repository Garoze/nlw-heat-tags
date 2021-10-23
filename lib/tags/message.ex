defmodule Tags.Message do
  use Ecto.Schema
  import Ecto.Changeset

  @params [:message, :username, :email]
  @derive {Jason.Encoder, only: [:id] ++ @params}

  schema "messages" do
    field :message, :string
    field :username, :string
    field :email, :string

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @params)
    |> validate_required(@params)
    |> validate_length(:message, min: 1, max: 140)
    |> validate_format(:email, ~r/@/)
  end
end
