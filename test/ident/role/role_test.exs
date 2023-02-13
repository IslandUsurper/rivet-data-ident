defmodule Rivet.Data.Ident.Test.RoleTest do
  use Rivet.Data.Ident.Case, async: true

  doctest Rivet.Data.Ident.Role, import: true
  doctest Rivet.Data.Ident.Role.Db, import: true
  doctest Rivet.Data.Ident.Role.Loader, import: true
  doctest Rivet.Data.Ident.Role.Seeds, import: true
  doctest Rivet.Data.Ident.Role.Graphql, import: true
  doctest Rivet.Data.Ident.Role.Resolver, import: true
  doctest Rivet.Data.Ident.Role.Rest, import: true
  doctest Rivet.Data.Ident.Role.Cache, import: true

  describe "factory" do
    test "factory creates a valid instance" do
      assert %{} = model = insert(:ident_role)
      assert model.id != nil
    end
  end

  describe "build/1" do
    test "build when valid" do
      params = params_with_assocs(:ident_role)
      changeset = Rivet.Data.Ident.Role.build(params)
      assert changeset.valid?
    end
  end

  describe "get/1" do
    test "loads saved transactions as expected" do
      c = insert(:ident_role)
      assert %Rivet.Data.Ident.Role{} = found = Rivet.Data.Ident.Role.one!(id: c.id)
      assert found.id == c.id
    end
  end

  describe "create/1" do
    test "inserts a valid record" do
      attrs = params_with_assocs(:ident_role)
      assert {:ok, model} = Rivet.Data.Ident.Role.create(attrs)
      assert model.id != nil
    end
  end

  describe "delete/1" do
    test "deletes record" do
      model = insert(:ident_role)
      assert {:ok, deleted} = Rivet.Data.Ident.Role.delete(model)
      assert deleted.id == model.id
    end
  end
end