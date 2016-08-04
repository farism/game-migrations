defmodule Migrations.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string
      add :email, :string
      add :password, :string
      add :deleted, :boolean

      timestamps
    end
  end
end
