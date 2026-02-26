#!/bin/bash

mkdir -p IMGS DOCS TXTS PDFS VACIOS

imagenes_movidos=0
docs_movidos=0
txts_movidos=0
pdfs_movidos=0

for file in *; do
    if [[ -f "$file" && ! -s "$file" ]]; then
        mv "$file" VACIOS/
        continue
    fi

    if [[ $file == *.pdf ]]; then
        mv "$file" PDFS/
        ((pdfs_movidos++))
    elif [[ $file == *.txt ]]; then
        mv "$file" TXTS/
        ((txts_movidos++))
    elif [[ $file == *.doc || $file == *.odt ]]; then
        mv "$file" DOCS/
        ((docs_movidos++))
    elif [[ $file == *.gif || $file == *.jpg || $file == *.png ]]; then
        mv "$file" IMGS/
        ((imagenes_movidos++))
    fi
done

echo "Imagenes: $imagenes_movidos"
echo "Docs: $docs_movidos"
echo "Txts: $txts_movidos"
echo "Pdfs: $pdfs_movidos"
