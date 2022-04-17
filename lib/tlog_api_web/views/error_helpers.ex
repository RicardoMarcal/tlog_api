defmodule TlogApiWeb.ErrorHelpers do

  def translate_error({msg, opts}) do
    if count = opts[:count] do
      Gettext.dngettext(TlogApiWeb.Gettext, "errors", msg, msg, count, opts)
    else
      Gettext.dgettext(TlogApiWeb.Gettext, "errors", msg, opts)
    end
  end

end
