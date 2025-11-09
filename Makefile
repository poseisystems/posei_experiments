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

# Posei Experiments: Code update - 20260101154121

# Posei Experiments: Code update - 20260101154122

# Posei Experiments: Code update - 20260101154123

# Posei Experiments: Code update - 20260101154208

# Posei Experiments: Code update - 20260101154213

# Posei Experiments: Code update - 20260101154214

# Posei Experiments: Code update - 20260101154218
# Posei Experiments: Enhancement for Posei Experiments integration - 20260101

# Posei Experiments: Code update - 20260101154220
# Posei Experiments: Commit enhancement - 20260101154220


# Posei Experiments: Code update - 20260101154224

# Posei Experiments: Code update - 20260101154425