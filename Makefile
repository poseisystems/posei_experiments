install:
	poetry install

build: clean-artifacts
	cargo build --manifest-path experiments/core/Cargo.toml
	poetry run python build.py

clean:
	git clean -fxd

clean-artifacts:
	rm -rf build

cargo-update:
	(cd experiments/core && cargo update)

cargo-test:
	(cd experiments/core && cargo test)

update:
	(cd experiments/core && cargo update)
	poetry update

test:
	pytest -s tests
	

# Posei Experiments: Code update - 20260101154055

# Posei Experiments: Code update - 20260101154102

# Posei Experiments: Code update - 20260101154111

# Posei Experiments: Code update - 20260101154119