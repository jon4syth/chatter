defmodule ChatterWeb.UserVisitsHomePageTest do
  use ChatterWeb.FeatureCase, async: true

  test "user can visit homepage", %{session: session} do
    session
    |> IO.inspect(label: "SESSION")
    |> visit("/")
    |> assert_has(Query.css(".title"))
  end
end
