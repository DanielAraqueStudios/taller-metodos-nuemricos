#!/bin/bash
# Script para ejecutar todos los códigos MATLAB y generar las figuras
# Uso: bash ejecutar_matlab.sh

echo "==================================================================="
echo "  GENERACIÓN DE FIGURAS PARA TALLER DE EDPs"
echo "==================================================================="
echo ""

# Verificar si MATLAB está instalado
if ! command -v matlab &> /dev/null
then
    echo "ERROR: MATLAB no está instalado o no está en el PATH"
    echo "Por favor instala MATLAB o agrega su ubicación al PATH"
    exit 1
fi

echo "✓ MATLAB encontrado"
echo ""

# Crear directorio para figuras si no existe
mkdir -p figuras_generadas

echo "Iniciando generación de figuras..."
echo ""

# Ejecutar Ejercicio 1
echo "[1/3] Generando figuras del Ejercicio 1 (Ecuación de Calor)..."
matlab -batch "run('ejercicio1_calor.m'); exit;" 2>&1 | grep -i "figura\|error\|warning"
if [ $? -eq 0 ]; then
    echo "  ✓ Ejercicio 1 completado"
else
    echo "  ✗ Error en Ejercicio 1"
fi
echo ""

# Ejecutar Ejercicio 2
echo "[2/3] Generando figuras del Ejercicio 2 (Ecuación de Onda)..."
matlab -batch "run('ejercicio2_onda.m'); exit;" 2>&1 | grep -i "figura\|error\|warning"
if [ $? -eq 0 ]; then
    echo "  ✓ Ejercicio 2 completado"
else
    echo "  ✗ Error en Ejercicio 2"
fi
echo ""

# Ejecutar Ejercicio 3 y 4
echo "[3/3] Generando figuras de los Ejercicios 3 y 4 (Ecuación de Laplace)..."
matlab -batch "run('ejercicio3_laplace.m'); exit;" 2>&1 | grep -i "figura\|error\|warning"
if [ $? -eq 0 ]; then
    echo "  ✓ Ejercicios 3 y 4 completados"
else
    echo "  ✗ Error en Ejercicios 3 y 4"
fi
echo ""

# Mover figuras al directorio de figuras (opcional)
# mv *.png figuras_generadas/ 2>/dev/null

echo "==================================================================="
echo "  GENERACIÓN COMPLETADA"
echo "==================================================================="
echo ""
echo "Figuras generadas:"
ls -1 ejercicio*.png 2>/dev/null | wc -l | xargs echo "  Total:"
echo ""
echo "Para compilar el documento LaTeX:"
echo "  1. Asegúrate de que todas las imágenes PNG estén en el mismo"
echo "     directorio que main.tex"
echo "  2. Compila con: pdflatex main.tex"
echo "  3. Ejecuta dos veces para actualizar referencias"
echo ""
echo "Para usar en Overleaf:"
echo "  1. Sube todos los archivos PNG a tu proyecto en Overleaf"
echo "  2. Asegúrate de que estén en la misma carpeta que main.tex"
echo "  3. Compila el documento"
echo ""
