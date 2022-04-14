defmodule TlogApiWeb.Schema do
  use Absinthe.Schema

  import_types TlogApiWeb.Schema.Types.Root

  query do
    import_fields :root_query
  end

  mutation do
    import_fields :root_mutation
  end
end
