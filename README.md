# Rocketpay
## Semana next lvl 4 rocketseat elixir

### Config
[x] - intalar postgres, elixir e phoenix framework.(esse você pode consultar na documentação no final do READ.md)

[x] - criando um projeto $mix phx.new (nome do projeto) --no-webpackt --no-html (como vai ser json não tem nescissidade de poluir o projeto com webpack e html, caso tenha ter é só remover o --no-webpack e o --no-html).

[x] configurando o banco em /config/dev.exs e /config/test.exs (em caso da porta não ser padrão, adicionar abaixo de hostname port: (sua porta) a padrão é 5432).
usar o comando $mix ecto.setup

[x] - adicinar o credo na dependência no arquivo mix.exs em deps  {:credo, "~> 1.5", only: [:dev, :test], runtime: false} 

[x] - intalar dependência $mix deps.get

[x] - criar arquivo credo.exs $mix credo gen.config

[x] - mudar {Credo.Check.Readability.ModuleDoc, []} para {Credo.Check.Readability.ModuleDoc, false} para não ser nescessário criar documentação.

### Iniciando aplicação

[x] - iniciar o pheonix $mix phx.server

[x] - abrir navegador/browser http://localhost:4000/dashboard mostra a monitoração da aplicação

[x] - criar primeira rota em /rocketpay_we/router.exs



To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## links

  * elixir: https://elixir-lang.org/install.html
  *postgresql: https://www.postgresql.org/
  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
  


