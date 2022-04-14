defmodule TlogApiWeb.Resolvers.User do
  def create(%{input: params}, _context), do: TlogApi.Users.Create.call(params)
  def get(%{id: user_id}, _context), do: TlogApi.Users.Get.call(user_id)
end
