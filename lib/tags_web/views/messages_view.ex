defmodule TagsWeb.MessagesView do
  use TagsWeb, :view

  def render("create.json", %{message: message}) do
    %{
      result: "Message Created!",
      message: message
    }
  end
end
