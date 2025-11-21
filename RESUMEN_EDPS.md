# Resumen del Taller de EDPs

## Documento Principal: main.tex

Este documento contiene la solución completa de **4 ejercicios de Ecuaciones Diferenciales Parciales (EDPs)** para el curso de Métodos Numéricos.

## Estructura del Documento

### Portada
- Universidad Militar Nueva Granada
- Ingeniería Mecatrónica - Sexto Semestre
- Título: "Taller de Ecuaciones Diferenciales Parciales"

### Contenido Principal

#### Sección 1: Ecuación de Calor Unidimensional
**Problema:** Distribución de temperatura en una barra de 100 unidades de longitud
- **Condiciones de frontera:** u(0,t) = 0, u(100,t) = 0
- **Condición inicial:** Función triangular (pico en x=50)
- **Parámetro:** k = 1.6352 (difusividad térmica)
- **Solución:** Método de separación de variables + Series de Fourier
- **Resultados:** 
  - Coeficientes de Fourier B_n calculados explícitamente
  - B_1 ≈ 32.429, B_3 ≈ 3.603, B_5 ≈ 1.297
  - Suma parcial S_5 con visualización en Mathematica

#### Sección 2: Ecuación de Onda - Cuerda Vibrante
**Problema:** Vibración de cuerda con desplazamiento inicial tipo zigzag
- **Condiciones de frontera:** u(0,t) = 0, u(L,t) = 0
- **Desplazamiento inicial:** Función por tramos (4 segmentos lineales)
- **Velocidad inicial:** g(x) = 0
- **Solución:** Método de D'Alembert generalizado con Fourier
- **Resultados:**
  - Coeficientes A_n calculados para cada modo
  - Interpretación física de los modos de vibración

#### Sección 3: Ecuación de Laplace - Placa Rectangular (Caso General)
**Problema:** Distribución estacionaria de temperatura en placa rectangular
- **Condiciones de frontera:** 
  - u(0,y) = 0, u(a,y) = 0 (bordes laterales)
  - u(x,0) = 0 (borde inferior)
  - u(x,b) = f(x) (borde superior - no homogénea)
- **Solución:** Separación de variables con funciones hiperbólicas
- **Resultados:**
  - Solución: u(x,y) = Σ B_n sinh(nπy/a) sin(nπx/a)
  - Fórmula para coeficientes B_n con integral de f(x)
  - Interpretación física del decaimiento espacial

#### Sección 4: Ecuación de Laplace - Caso Específico
**Problema:** Variante con condición no homogénea en borde inferior
- **Condiciones de frontera:**
  - u(0,y) = 0, u(a,y) = 0 (bordes laterales)
  - u(x,0) = f(x) (borde inferior - no homogénea)
  - u(x,b) = 0 (borde superior)
- **Solución:** Similar al caso anterior pero con sinh(nπ(b-y)/a)
- **Diferencia clave:** Función hiperbólica invertida debido a la posición de la condición no homogénea

### Conclusiones
Análisis comparativo de los cuatro problemas destacando:
- Método de separación de variables
- Aplicación de series de Fourier
- Problemas de Sturm-Liouville
- Significado físico de cada término
- Convergencia de las series

### Referencias Bibliográficas
8 referencias especializadas en EDPs:
- Strauss (2007)
- Haberman (2012)
- Evans (2010)
- Powers (2006)
- Farlow (1993)
- Asmar (2016)
- Pinchover & Rubinstein (2005)
- Zill & Wright (2014)

## Características del Documento

✅ **984 → 942 líneas** (optimizado, contenido enfocado en EDPs)
✅ **Idioma:** Español
✅ **Formato:** Artículo académico, 12pt, A4
✅ **Matemáticas:** Notación rigurosa con teoremas y demostraciones
✅ **Compilación:** Listo para Overleaf (pdfLaTeX)
✅ **Paquetes:** amsmath, amssymb, tikz, pgfplots, algorithm2e, babel (spanish)

## Archivos Complementarios

El proyecto incluye:
- **README.md**: Guía completa de 450+ líneas
- **QUICKSTART.md**: Inicio rápido en 5 minutos
- **LATEX_CHEATSHEET.md**: Referencia de comandos LaTeX (400+ líneas)
- **TEMPLATE_EJERCICIOS.tex**: Plantillas reutilizables
- **INDEX.md**: Índice visual del proyecto
- **RESUMEN_PROYECTO.md**: Panorama general
- **EJERCICIOS_ADICIONALES.tex**: Ejercicios complementarios (métodos numéricos generales)

## Cómo Usar

### En Overleaf
1. Subir `main.tex` a un nuevo proyecto
2. Compilar con pdfLaTeX
3. Listo para descargar PDF

### Localmente
```bash
pdflatex main.tex
pdflatex main.tex  # Segunda compilación para referencias
```

## Resultados Esperados

El documento generará un PDF de aproximadamente **15-20 páginas** que incluye:
- Portada profesional
- Tabla de contenidos
- 4 ejercicios completos con soluciones detalladas
- Ecuaciones numeradas y referenciadas
- Visualizaciones matemáticas
- Conclusiones y análisis
- Bibliografía especializada

## Personalización

Para modificar el documento:
- **Título/Autor:** Líneas 112-120
- **Ejercicios:** Secciones 1-4 (líneas 172-750)
- **Conclusiones:** Línea 850+
- **Referencias:** Línea 900+

## Estado del Proyecto

✅ **COMPLETO** - Listo para compilación y entrega
✅ Todo el contenido de métodos numéricos fue reemplazado por EDPs
✅ 4 ejercicios completamente resueltos
✅ Formato académico profesional
✅ Compatible con Overleaf

---

**Última actualización:** Contenido transformado de métodos numéricos generales a EDPs específicas
**Autor:** GitHub Copilot
**Institución:** Universidad Militar Nueva Granada
