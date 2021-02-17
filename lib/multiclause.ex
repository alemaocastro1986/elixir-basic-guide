defmodule BasicGuide.MultiClause do
  def bonus_salary({:director, salary}), do: salary * 1.30
  def bonus_salary({:manager, salary}), do: salary * 1.20
  def bonus_salary({:trainee, salary}), do: salary * 1.10
  def bonus_salary(unknown), do: {:error, {:employe_not_found, unknown}}
end
