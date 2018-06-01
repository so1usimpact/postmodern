defmodule Postmodern.Stories.Article do
  use Ecto.Schema
  import Ecto.Changeset


  schema "articles" do
    field :body, :string
    field :published, :boolean, default: false
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(article, attrs) do
    article
    |> cast(attrs, [:title, :body, :published])
    |> validate_required([:title, :body, :published])
  end
end
