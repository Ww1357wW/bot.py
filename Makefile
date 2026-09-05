# Makefile for bot.py project

.PHONY: help install test lint format run clean

help:
	@echo "bot.py - Makefile Commands"
	@echo ""
	@echo "Available commands:"
	@echo "  make install     - Install dependencies"
	@echo "  make test        - Run all tests"
	@echo "  make lint        - Run linting checks"
	@echo "  make format      - Format code with black"
	@echo "  make run         - Run the bot"
	@echo "  make clean       - Clean up generated files"
	@echo "  make all         - Install, lint, test, and format"

install:
	pip install -r requirements.txt

test:
	pytest

lint:
	flake8 .
	pylint bot.py

format:
	black .

run:
	python bot.py

clean:
	find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".coverage" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name "*.egg-info" -exec rm -rf {} + 2>/dev/null || true

all: install lint format test
	@echo "✅ All tasks completed successfully!"
