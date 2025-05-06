defmodule NameBadge do

  def print(id, name, department) do
    dpt = if department, do: String.upcase(department), else: "OWNER"
    
    if id != nil do
      "[#{Integer.to_string(id)}] - #{name} - #{dpt}"
    else
      "#{name} - #{dpt}"
    end
  end
  
end
