clear:
	node -e "console.clear()"

build:
	mix compile

start: clear
	mix run --no-halt

watch:
	onchange -i -k "config/*.ex" "lib/**/*.ex" -- make start

format: clear
	mix format

format-watch:
	onchange -i -k "config/*.ex" "lib/**/*.ex" -- make format

analyze: clear
	mix dialyzer
	mix credo

analyze-watch:
	onchange -i -k "config/*.ex" "lib/**/*.ex" "test/**/*.exs" -- make analyze

test: clear
	mix test --trace

test-watch:
	onchange -i -k "config/*.ex" "lib/**/*.ex" "test/**/*.exs" -- make test

debug: clear
	iex -S mix

debug-watch:
	onchange -i -k "config/*.ex" "lib/**/*.ex" -- make debug
