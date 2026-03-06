#!/bin/bash

# Definition der Hauptdatei
MAIN_FILE="main"
OUTPUT_DIR="out"

# Sicherstellen, dass das Ausgabeverzeichnis existiert
mkdir -p "$OUTPUT_DIR"

echo "Starte Kompilierung von $MAIN_FILE.tex..."

# Erster Durchlauf: Inhaltsverzeichnis und grundlegende Struktur
# -interaction=nonstopmode verhindert, dass das Skript bei Fehlern anhält
# -output-directory=out speichert alle temporären Dateien im 'out' Ordner
pdflatex -interaction=nonstopmode -output-directory="$OUTPUT_DIR" "$MAIN_FILE.tex"

# Zweiter Durchlauf: Aktualisierung des Inhaltsverzeichnisses
pdflatex -interaction=nonstopmode -output-directory="$OUTPUT_DIR" "$MAIN_FILE.tex"

# Ein dritter Durchlauf stellt sicher, dass alle Querverweise korrekt sind
pdflatex -interaction=nonstopmode -output-directory="$OUTPUT_DIR" "$MAIN_FILE.tex"

echo "Bereinige temporäre Dateien..."

# Nur die PDF im 'out' Verzeichnis behalten, andere Dateien (aux, log, toc, etc.) löschen
# Wir löschen alles in 'out', was keine PDF-Datei ist.
find "$OUTPUT_DIR" -type f ! -name "*.pdf" -delete

echo "--------------------------------------------------"
echo "Fertig! Die PDF-Datei befindet sich in '$OUTPUT_DIR/$MAIN_FILE.pdf'."
echo "--------------------------------------------------"
