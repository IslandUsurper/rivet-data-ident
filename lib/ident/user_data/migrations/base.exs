defmodule Rivet.Data.Ident.UserData.Migrations.Root do
  @moduledoc false
  use Ecto.Migration

  def change do
    create table(:user_data) do
    #  add(:user_id, references(:users, on_delete: :delete_all, type: :uuid))
      timestamps()
    end

    #create(index(:auth_accesses, [:domain, :ref_id]))
  end
end
