# `dorian-csv-uniq`

Deduplicate CSV rows, optionally by selected keys.

## Install

```bash
gem install dorian-csv-uniq
```

Also included in the aggregate gem:

```bash
gem install dorian
```

## Usage

```bash
csv-uniq [options] [key ...] [file ...]
```

Run `csv-uniq -h` for generated option details and `csv-uniq -v` for the installed version.

## Notes

- Without keys it deduplicates whole rows. With `--headers`, keys can be header names.

## Examples

### Deduplicate rows

```bash
printf 'a,1\nb,2\na,1\n' | csv-uniq
```

### Deduplicate by a header

```bash
csv-uniq --headers -p key input.csv
```
