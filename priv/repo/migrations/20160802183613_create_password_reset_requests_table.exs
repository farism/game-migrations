defmodule Migrations.Repo.Migrations.CreatePasswordResetRequestsTable do
  use Ecto.Migration

  def change do
    create table(:password_reset_requests) do
      add :user_id, :string
      add :reset_code, :string

      timestamps
    end
  end
end
