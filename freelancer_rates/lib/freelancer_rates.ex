defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end
  def apply_discount(before_discount, discount) do
    before_discount * (100 - discount) / 100
  end
  def monthly_rate(hourly_rate, discount) do
    hourly_rate
    |> apply_discount(discount) 
    |> Kernel.*(22) 
    |> daily_rate()
    |> Float.ceil() 
    |> Kernel.trunc()
  end
  def days_in_budget(budget, hourly_rate, discount) do
    Float.floor(budget / apply_discount(daily_rate(hourly_rate), discount),1)
  end
end