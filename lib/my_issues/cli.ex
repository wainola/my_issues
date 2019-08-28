defmodule MyIssues.CLI do
    def main(argv) do
        OptionParser.parse(argv, switches: [help: :boolean])
        |> elem(1)
        |> parse_args()
        |> fetch_the_data()
    end

    def parse_args ([num_of_users]) do
        { num_of_users }
    end
    
    def parse_args (_) do
        IO.puts("You need help!!")
    end

    def fetch_the_data (num_of_users) do
        HTTPoison.get("https://randomuser.me/api/")
        |> handle_response()
        |> decode_body()
    end

    def handle_response ({_, %{status_code: 200, body: body }}) do
        { :ok, body }
    end

    def decode_body({ :ok, body }), do: IO.puts(body)
end