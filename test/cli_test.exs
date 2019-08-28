defmodule CliTest do
    use ExUnit.Case

    import Issues.CLI, only: [main: 1, parse_args: 2, handle_response: 1, ]
end