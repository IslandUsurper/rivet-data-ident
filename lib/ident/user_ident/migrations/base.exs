defmodule Rivet.Data.Ident.UserIdent.Migrations.Base do
  @moduledoc false
  use Ecto.Migration

  def change do
    create table(:ident_user_idents, primary_key: false) do
      add(:origin, :string, primary_key: true)
      add(:ident, :binary, primary_key: true)
      add(:user_id, references(:users, on_delete: :delete_all, type: :uuid))
      timestamps()
    end

    # only one user per origin ID
    create(unique_index(:ident_user_idents, [:origin, :ident]))
  end
end
