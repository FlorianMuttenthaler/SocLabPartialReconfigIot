mkdir -p build

latexmk -pdf -pvc -jobname=./build/main main.tex
