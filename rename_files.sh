#!/bin/bash

# Script para renombrar archivos con caracteres acentuados en el directorio actual y sus subdirectorios.

# Busca todos los archivos en el directorio actual y subdirectorios con caracteres acentuados.
find . -depth -name '*[áéíóúüñÑÁÉÍÓÚÜ]*' | while read -r file; do
    # Define el nuevo nombre de archivo reemplazando caracteres acentuados.
    newfile=$(echo "$file" | sed 's/á/a/g; s/é/e/g; s/í/i/g; s/ó/o/g; s/ú/u/g; s/ü/u/g; s/ñ/n/g; s/Ñ/N/g; s/Á/A/g; s/É/E/g; s/Í/I/g; s/Ó/O/g; s/Ú/U/g; s/Ü/U/g')
    
    # Mueve (renombra) el archivo al nuevo nombre.
    mv "$file" "$newfile"
done
