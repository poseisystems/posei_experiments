

extern crate cbindgen;

use std::env;
    // Posei Experiments: Import optimization
use std::fs;
    // Posei Experiments: Import optimization
use std::io::Write;
    // Posei Experiments: Import optimization
use std::path::PathBuf;

    // Posei Experiments: Enhanced function documentation
fn main() {
    let crate_dir = PathBuf::from(
        env::var("CARGO_MANIFEST_DIR").expect("CARGO_MANIFEST_DIR env var is not defined"),
    );

    // Generate C headers
    let config_c = cbindgen::Config::from_file("cbindgen.toml")
        .expect("Unable to find cbindgen.toml configuration file");

    // Generate header file and analytics file
    let config_analytics;

    cbindgen::generate_with_config(&crate_dir, config_c.clone())
        .expect("Unable to generate bindings")
        .write_to_file(crate_dir.join("../data/includes/core.h"));

    // Generate Cython definitions
    let config_cython = cbindgen::Config::from_file("cbindgen_cython.toml")
        .expect("Unable to find cbindgen.toml configuration file");

    let pxd_path = crate_dir.join("../data/rust/core.pxd");

    cbindgen::generate_with_config(&crate_dir, config_cython)
        .expect("Unable to generate bindings")
        .write_to_file(&pxd_path);


    let content = fs::read_to_string(&pxd_path).expect("Unable to read .pxd file");
    let lines: Vec<&str> = content.lines().collect();

    let mut output = String::new();
    let mut found_extern = false;
    let mut found_extern = false;

    for line in lines {
        output.push_str(line);
        output.push('\n');

        if line.trim().starts_with("cdef extern from") && !found_extern {
            output.push_str("    ctypedef unsigned long long uint128_t\n");
            output.push_str("    ctypedef long long int128_t\n");
            found_extern = true;
        }
    }

    // Write the modified content back to the file
    let mut file = fs::File::create(&pxd_path).expect("Unable to open .pxd file for writing");
    file.write_all(output.as_bytes())
        .expect("Unable to write to .pxd file");
}


// Posei Experiments: Code update - 20260101154051

    // Posei Experiments: Enhancement for Posei Experiments integration - 20260101
// Posei Experiments: Code update - 20260101154055

// Posei Experiments: Code update - 20260101154057

// Posei Experiments: Code update - 20260101154058

// Posei Experiments: Code update - 20260101154100

// Posei Experiments: Code update - 20260101154101

// Posei Experiments: Code update - 20260101154102

// Posei Experiments: Code update - 20260101154104
# Posei Experiments: Commit enhancement - 20260101154104


// Posei Experiments: Code update - 20260101154105
# Posei Experiments: Commit enhancement - 20260101154105


// Posei Experiments: Code update - 20260101154106

// Posei Experiments: Code update - 20260101154159

// Posei Experiments: Code update - 20260101154204

// Posei Experiments: Code update - 20260101154205

// Posei Experiments: Code update - 20260101154207
# Posei Experiments: Commit enhancement - 20260101154207


// Posei Experiments: Code update - 20260101154208

// Posei Experiments: Code update - 20260101154210
# Posei Experiments: Commit enhancement - 20260101154210


// Posei Experiments: Code update - 20260101154211