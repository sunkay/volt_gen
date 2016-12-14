defmodule VoltGen.Mixfile do
  use Mix.Project

  def project do
    [app: :volt_gen,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: "Generator for auth/auth & volt",
     package: package(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end


  defp package do
      [# These are the default files included in the package
       name: :volt_gen,
       files: ["lib", "mix.exs", "README*"],
       maintainers: ["Sunil Kayiti"],
       licenses: ["Apache 2.0"],
       links: %{"GitHub" => "https://github.com/sunkay/volt_gen"}]
    end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end
end
