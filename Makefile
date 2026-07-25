SERVER := picolemon_server
APP    := picolemon_flutter
GAMES  := picolemon_games
DEVICE ?= R3CY8066JQM

.DEFAULT_GOAL := help
.PHONY: help up down ps logs server apply gen migrate reverse run web run-all \
        fmt analyze test check reset clean db

help: ## show this help
	@grep -hE '^[a-zA-Z_-]+:.*?## ' $(MAKEFILE_LIST) \
	  | awk 'BEGIN{FS=":.*?## "}{printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2}'

# ── infrastructure ──────────────────────────────────────────────

up: ## start Postgres + Redis
	cd $(SERVER) && docker compose up -d

down: ## stop containers (KEEPS data)
	cd $(SERVER) && docker compose down

ps: ## container status
	cd $(SERVER) && docker compose ps

logs: ## follow container logs
	cd $(SERVER) && docker compose logs -f

db: ## psql shell into the dev database
	cd $(SERVER) && docker compose exec postgres psql -U postgres -d picolemon

# ── server ──────────────────────────────────────────────────────

server: ## run the Serverpod server
	cd $(SERVER) && dart run bin/main.dart

apply: ## run the server, applying pending migrations
	cd $(SERVER) && dart run bin/main.dart --apply-migrations

gen: ## regenerate client + protocol — after ANY model or endpoint change
	cd $(SERVER) && serverpod generate

migrate: ## create a migration from model changes
	cd $(SERVER) && serverpod create-migration

# ── app ─────────────────────────────────────────────────────────

reverse: ## forward the phone's localhost:8080 to this Mac over USB
	adb reverse tcp:8080 tcp:8080

run: reverse ## run on the phone (default target device)
	cd $(APP) && flutter run -d $(DEVICE)

web: ## run in Chrome
	cd $(APP) && flutter run -d chrome

run-all: reverse ## run on EVERY connected device; one hot reload updates all
	cd $(APP) && flutter run -d all

# ── quality ─────────────────────────────────────────────────────

fmt: ## format everything
	dart format .

analyze: ## static analysis, all packages
	cd $(SERVER) && dart analyze --fatal-infos
	cd $(GAMES) && dart analyze --fatal-infos
	cd $(APP) && flutter analyze

test: ## run all tests
	cd $(SERVER) && dart test
	cd $(GAMES) && dart test
	cd $(APP) && flutter test

check: ## everything CI runs, plus the Flutter app (which CI currently skips)
	cd $(SERVER) && dart format --output=none --set-exit-if-changed .
	cd $(SERVER) && dart analyze --fatal-infos
	cd $(GAMES) && dart format --output=none --set-exit-if-changed .
	cd $(GAMES) && dart analyze --fatal-infos
	cd $(APP) && dart format --output=none --set-exit-if-changed .
	cd $(APP) && flutter analyze

# ── recovery ────────────────────────────────────────────────────

reset: ## DESTROY the database, recreate it, re-apply migrations
	cd $(SERVER) && docker compose down -v
	cd $(SERVER) && docker compose up -d
	sleep 5
	cd $(SERVER) && dart run bin/main.dart --apply-migrations

clean: ## clear build artifacts and re-resolve
	cd $(APP) && flutter clean
	flutter pub get
