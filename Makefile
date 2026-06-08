# After setup, uploads theme files to Discourse server and gives you a preview URL
serve:
	clear
	
	@if [ ! -f .discourse_theme ]; then \
			echo "Creating local .discourse_theme configuration from template..."; \
			cp .discourse_theme.template .discourse_theme; \
	fi

	docker compose run --build --rm watch

# Formats files
# Note: The package.json file that comes with the base theme has a `format` script but it tries to
# force you use to install `pnpm` to use it. To workaround, we run Prettier directly via `npm` on 
# the core files we care about.
format:
	npx prettier@3.8.1 --no-config scss/**/*.scss --write