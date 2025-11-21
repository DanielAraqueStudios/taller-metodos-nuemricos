@echo off
REM Script para ejecutar todos los códigos MATLAB y generar las figuras
REM Uso: ejecutar_matlab.bat

echo ===================================================================
echo   GENERACIÓN DE FIGURAS PARA TALLER DE EDPs
echo ===================================================================
echo.

REM Verificar si MATLAB está instalado
where matlab >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: MATLAB no está instalado o no está en el PATH
    echo Por favor instala MATLAB o agrega su ubicación al PATH
    pause
    exit /b 1
)

echo ✓ MATLAB encontrado
echo.

echo Iniciando generación de figuras...
echo.

REM Ejecutar Ejercicio 1
echo [1/3] Generando figuras del Ejercicio 1 (Ecuación de Calor)...
matlab -batch "run('ejercicio1_calor.m'); exit;"
if %ERRORLEVEL% EQU 0 (
    echo   ✓ Ejercicio 1 completado
) else (
    echo   ✗ Error en Ejercicio 1
)
echo.

REM Ejecutar Ejercicio 2
echo [2/3] Generando figuras del Ejercicio 2 (Ecuación de Onda)...
matlab -batch "run('ejercicio2_onda.m'); exit;"
if %ERRORLEVEL% EQU 0 (
    echo   ✓ Ejercicio 2 completado
) else (
    echo   ✗ Error en Ejercicio 2
)
echo.

REM Ejecutar Ejercicio 3 y 4
echo [3/3] Generando figuras de los Ejercicios 3 y 4 (Ecuación de Laplace)...
matlab -batch "run('ejercicio3_laplace.m'); exit;"
if %ERRORLEVEL% EQU 0 (
    echo   ✓ Ejercicios 3 y 4 completados
) else (
    echo   ✗ Error en Ejercicios 3 y 4
)
echo.

echo ===================================================================
echo   GENERACIÓN COMPLETADA
echo ===================================================================
echo.
echo Figuras generadas en el directorio actual
echo.
echo Para compilar el documento LaTeX:
echo   1. Asegúrate de que todas las imágenes PNG estén en el mismo
echo      directorio que main.tex
echo   2. Compila con: pdflatex main.tex
echo   3. Ejecuta dos veces para actualizar referencias
echo.
echo Para usar en Overleaf:
echo   1. Sube todos los archivos PNG a tu proyecto en Overleaf
echo   2. Asegúrate de que estén en la misma carpeta que main.tex
echo   3. Compila el documento
echo.
pause
