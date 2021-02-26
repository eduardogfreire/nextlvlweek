defmodule RocketpayWeb.UsersViewTest do

  use RocketpayWeb.ConnCase, async: true

  import Phoenix.View

  alias Rocketpay.{Account, User}
  alias RocketpayWeb.UsersView

  test "renders create.json" do
    params = %{
      name: "edardo",
      nickname: "frerooe",
      email: "edugfrere@hotmail.com.br",
      idade: 38,
      password: "edu123123"
    }
    {:ok, %User{id: user_id, account: %Account{id: account_id}} = user} =
    Rocketpay.create_user(params)

  response = render(UsersView, "create.json", user: user)

  expected_response = %{
   message: "User Created",
      user: %{
        account: %{
        balance: Decimal.new("0.00"),
        id: account_id
     },
     id: user_id,
     name: "edardo",
     nickname: "frerooe"
     }
    }
    assert expected_response == response
  end
end
