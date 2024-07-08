# MIToS_Scripts

[![Build Status](https://github.com/MIToSOrg/MIToS_Scripts.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/MIToSOrg/MIToS_Scripts.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Aqua](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)

**MIToS_Scripts.jl** is a command-line interface (CLI) script collection designed to facilitate various bioinformatics tasks. Any researcher with basic terminal knowledge can easily utilize these scripts without Julia's coding experience. 

### Scripts

* **Buslje09.jl**: Calculates the corrected Mutual Information (MI/MIp) as described by Buslje et al., 2009.
* **BLMI.jl**: Computes corrected mutual information using BLOSUM62-based pseudocounts, as described in the MIToS publication (Zea et al., 2016).
* **Conservation.jl**: Calculates Shannon entropy and Kullback-Leibler divergence for each column in a Multiple Sequence Alignment (MSA).
* **DownloadPDB.jl**: Downloads gzipped files from the Protein Data Bank (PDB).
* **Distances.jl**: Computes inter-residue distances in a PDB file.
* **SplitStockholm.jl**: Splits a Stockholm file containing multiple alignments into separate compressed files for each MSA.
* **AlignedColumns.jl**: Creates a Stockholm file with aligned columns from a Pfam Stockholm file, removing insertions, and saves the mapping of residue numbers in UniProt and the original MSA columns.
* **PercentIdentity.jl**: Calculates the percentage identity between all sequences in an MSA and provides statistics such as mean, median, and minimum values.
* **MSADescription.jl**: Provides statistics for a given Stockholm file, including the number of columns, sequences, and clusters after Hobohm I clustering at 62% identity. It also reports the mean and standard deviation of sequence coverage and gap percentage.

### Installation

To install **MIToS_Scripts.jl**, you only need Julia 1.9 or later installed on your 
system. Executing `julia` in the terminal to open the Julia REPL, and finally, run the 
following command:

```julia
using Pkg
Pkg.add("https://github.com/MIToSOrg/MIToS_Scripts.jl")
```

Then, you can get the location of the installed scripts by running the following command:

```julia
using MIToS_Scripts
joinpath(pkgdir(MIToS_Scripts), "scripts")
```

You can run them from that location or copy them to a directory in your `PATH`.

### Usage

You can execute each provided script from your command line. For example, to run the `Buslje09.jl` 
script—if you are located in the folder where it is the scripts—use:

```bash
julia Buslje09.jl input_msa_file
```

Refer to the documentation of each script for specific usage instructions; you can access 
it by running the script with the `--help` or `-h` flag:

```bash
julia Buslje09.jl -h
```

### License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

### References

1. Buslje, C. M., Santos, J., Delfino, J. M., & Nielsen, M. (2009). Correction for phylogeny, small number of observations and data redundancy improves the identification of coevolving amino acid pairs using mutual information. Bioinformatics, 25(9), 1125-1131.
2. Zea, D. J., Anfossi, D., Nielsen, M., & Marino-Buslje, C. (2017). MIToS. jl: mutual information tools for protein sequence analysis in the Julia language. Bioinformatics, 33(4), 564-565.

### Citing

See [`CITATION.bib`](CITATION.bib) for the relevant reference(s).