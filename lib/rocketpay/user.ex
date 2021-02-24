defmodule Rocketpay.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Rocketpay.Account
  alias Ecto.Changeset

    @primary_key {:id, :binary_id, autogenerate: true}

    @required_params [:name, :idade, :email, :password, :nickname]

    schema "users" do
      field :name, :string
      field :idade, :integer
      field :email, :string
      field :password, :string, virtual: true
      field :password_hash, :string
      field :nickname, :string

      has_one :account, Account

      timestamps()
    end

    def changeset(params) do
      %__MODULE__{}
      |> cast(params, @required_params)
      |> validate_required(@required_params)
      |> validate_length(:password, min: 6)
      |> validate_number(:idade, greater_than_or_equal_to: 18)
      |> validate_format(:email, ~r/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i)
      |> unique_constraint([:email])
      |> unique_constraint([:nickname])
      |> put_password_hash()
    end


    defp put_password_hash(%Changeset{valid?: true, changes: %{password: password}} = changeset) do
      change(changeset, Bcrypt.add_hash(password))
    end

    defp put_password_hash(changeset), do: changeset

end
