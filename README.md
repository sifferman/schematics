
# HDL to Schematic Examples

This collection showcases examples of generating schematics from SystemVerilog code using various synthesis tools such as Yosys, Vivado, Genus, and Design Compiler.

## Synlig + Yosys + netlistsvg

1. Install the following:
   * <https://github.com/nturley/netlistsvg>
   * <https://github.com/chipsalliance/synlig>

2.

```bash
cd yosys
make
```

![Yosys Schematic](docs/yosys.svg)

## Vivado

1. Download Vivado: <https://www.xilinx.com/support/download.html>

2.

```bash
cd vivado
make
```

![Vivado Schematic](docs/vivado.svg)

## Genus

```bash
cd genus
make
```

![Genus Schematic](docs/genus.png)

## Design Compiler

```bash
cd design_compiler
make
```

![Design Compiler Schematic](docs/design_compiler.png)
