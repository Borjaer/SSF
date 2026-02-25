#!/bin/bash
mkdir -p IMGS DOCS TXTS PDFS VACIOS

imagenes_movidos=0
docs_movidos=0
txts_movidos=0
pdfs_movidos=0

#Directorio donde limpio: $1


for file in *; do
    if [[ -f "$file" && ! -s "$file" ]]; then
        mv "$file" VACIOS/
    fi
    if [[ "$file" == "*.pdf" ]]; then
	mv "$file" PDFS/
         ((pdfs_movidos ++))
fi
    if [[ "$file" == "*.txt" ]]; then
        mv "$file" TXTS/
         ((txts_movidos ++))
fi
	if [[ "$file" == "*.doc *.odt" ]]; then
        mv "$file" DOCS/
         ((docs_movidos ++))
fi
	if [[ "$file" == "*.gif *.jpg *.png" ]]; then
        mv "$file" IMGS/
         ((imagenes_movidos ++))
fi

done

echo $imagenes_movidos
echo $docs_movidos
echo $txts_movidos
echo $pdfs_movidos
