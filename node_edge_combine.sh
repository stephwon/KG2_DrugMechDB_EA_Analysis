#!/bin/bash

# Define the directory where your files are located
data_dir="/scratch/sjw6257/KG2_data"

# Loop through each directory in the data directory
for dir in "$data_dir"/*/; do
    # Extract the directory name
    dir_name=$(basename "$dir")

    # Check if the directory contains the required files
    if [ -f "$dir/nodes_c.tsv" ] && [ -f "$dir/nodes_c_header.tsv" ]; then
        # Combine the header file with the data file
        cat "$dir/nodes_c_header.tsv" "$dir/nodes_c.tsv" > "$dir/combined_nodes.tsv"
        echo "Combined nodes files in directory $dir_name"
    fi

    if [ -f "$dir/edges_c.tsv" ] && [ -f "$dir/edges_c_header.tsv" ]; then
        # Combine the header file with the data file
        cat "$dir/edges_c_header.tsv" "$dir/edges_c.tsv" > "$dir/combined_edge.tsv"
        echo "Combined edge files in directory $dir_name"
    fi
done

