# Taller de Ecuaciones Diferenciales Parciales - Proyecto LaTeX + MATLAB

## 📘 Descripción del Proyecto

Este repositorio contiene un taller completo sobre **Ecuaciones Diferenciales Parciales (EDPs)** que incluye:
- Documento LaTeX profesional con soluciones analíticas detalladas
- Códigos MATLAB para visualización de las soluciones
- Scripts de automatización para generar todas las figuras
- 4 figuras compuestas de alta calidad (1 por ejercicio, con múltiples paneles) integradas en el documento

Desarrollado para el curso de **Métodos Numéricos** de la Universidad Militar Nueva Granada, Ingeniería Mecatrónica, Sexto Semestre.

## 🎯 Contenido del Taller

### Ejercicios Resueltos

#### 🔥 **Ejercicio 1: Ecuación de Calor Unidimensional**
- Distribución de temperatura en una barra con condición inicial triangular
- Método de separación de variables
- Series de Fourier con coeficientes explícitos
- Visualización 3D de la evolución temporal
- 5 figuras MATLAB generadas

#### 🌊 **Ejercicio 2: Ecuación de Onda - Cuerda Vibrante**
- Cuerda con desplazamiento inicial en forma de zigzag
- Análisis modal y espectro de frecuencias
- Conservación de energía
- Animación del movimiento
- 6+ figuras MATLAB generadas

#### 🌡️ **Ejercicio 3: Ecuación de Laplace (Caso General)**
- Placa rectangular con condición no homogénea en y=b
- Estado estacionario de temperatura
- Isotermas y gradientes de temperatura
- 5 figuras MATLAB generadas

#### 🌡️ **Ejercicio 4: Ecuación de Laplace (Caso Específico)**
- Placa rectangular con condición no homogénea en y=0
- Comparación con Ejercicio 3
- Análisis de diferencias en funciones hiperbólicas
- 3 figuras MATLAB generadas

### Métodos Matemáticos Aplicados

- ✅ **Separación de Variables** para PDEs lineales
- ✅ **Series de Fourier** para condiciones iniciales/frontera
- ✅ **Problema de Sturm-Liouville** para autovalores
- ✅ **Funciones Hiperbólicas** (sinh, cosh) en problemas de Laplace
- ✅ **Análisis de Convergencia** de series infinitas
- ✅ **Interpretación Física** de cada solución

### Características LaTeX Profesionales

✅ **Paquetes Matemáticos Avanzados**: amsmath, amssymb, amsthm, mathtools  
✅ **Algoritmos**: algorithm2e con pseudocódigo numerado  
✅ **Visualizaciones**: TikZ y PGFPlots para gráficos de convergencia  
✅ **Tablas Profesionales**: booktabs para presentación de datos numéricos  
✅ **Entornos Personalizados**: Ejercicios, soluciones, teoremas  
✅ **Comandos Matemáticos Customizados**: Notación consistente  
✅ **Hiperenlaces**: Navegación interna del documento  
✅ **Soporte Multiidioma**: Configurado para español

## 🚀 Compilación en Overleaf

### Método 1: Importación Directa (Recomendado)

1. Inicia sesión en [Overleaf](https://www.overleaf.com/)
2. Haz clic en **"New Project"** → **"Upload Project"**
3. Sube el archivo `main.tex` o todo el repositorio comprimido
4. Overleaf detectará automáticamente la configuración
5. Haz clic en **"Recompile"** para generar el PDF

### Método 2: Creación Manual

1. Crea un nuevo proyecto en Overleaf (**"Blank Project"**)
2. Copia el contenido de `main.tex` al editor principal
3. Si utilizas archivos modulares (sección siguiente), crea los archivos adicionales
4. Compila con **pdfLaTeX** (configuración predeterminada)

### Compiladores Compatibles

- ✅ **pdfLaTeX** (Recomendado - más rápido)
- ✅ **XeLaTeX** (Para fuentes personalizadas)
- ✅ **LuaLaTeX** (Para proyectos complejos)

**Tiempo de compilación típico**: 5-10 segundos en Overleaf

## 📦 Estructura del Proyecto

```
taller-metodos-nuemricos/
│
├── 📄 Documento LaTeX
│   └── main.tex                       # Documento principal (1058 líneas)
│
├── 💻 Códigos MATLAB
│   ├── ejercicio1_calor.m            # Ecuación de calor
│   ├── ejercicio2_onda.m             # Ecuación de onda
│   └── ejercicio3_laplace.m          # Ecuación de Laplace (casos 3 y 4)
│
├── 🤖 Scripts de Automatización
│   ├── ejecutar_matlab.bat           # Para Windows
│   └── ejecutar_matlab.sh            # Para Linux/Mac
│
├── 📚 Documentación
│   ├── README.md                      # Este archivo
│   ├── README_MATLAB.md               # Guía detallada de MATLAB
│   ├── GUIA_COMPLETA.md               # Guía completa de uso
│   ├── QUICKSTART.md                  # Inicio rápido
│   └── LATEX_CHEATSHEET.md            # Referencia LaTeX
│
└── 🖼️ Figuras Generadas (después de ejecutar MATLAB)
    ├── ejercicio1_calor.png          # Figura compuesta: 6 paneles del Ejercicio 1
    ├── ejercicio2_onda.png           # Figura compuesta: 6 paneles del Ejercicio 2
    ├── ejercicio3_laplace.png        # Figura compuesta: 6 paneles del Ejercicio 3
    └── ejercicio4_laplace.png        # Figura compuesta: 6 paneles del Ejercicio 4
```

**Total:** 4 figuras PNG compuestas de alta calidad (1 por ejercicio, cada una con 6 subplots)

## 🚀 Inicio Rápido

### Paso 1: Generar Figuras con MATLAB

**Opción A - Automático (Recomendado):**
```bash
# Windows
ejecutar_matlab.bat

# Linux/Mac
chmod +x ejecutar_matlab.sh
./ejecutar_matlab.sh
```

**Opción B - Manual:**
```matlab
% En MATLAB
run ejercicio1_calor.m
run ejercicio2_onda.m
run ejercicio3_laplace.m
```

⏱️ **Tiempo estimado:** 2-4 minutos  
📊 **Resultado:** 4 archivos PNG compuestos generados (1 por ejercicio)

### Paso 2: Compilar Documento LaTeX

**Opción A - Overleaf (Más Fácil):**
1. Sube `main.tex` y todos los archivos PNG a Overleaf
2. Haz clic en "Recompile"
3. Descarga el PDF generado

**Opción B - Local:**
```bash
pdflatex main.tex
pdflatex main.tex  # Segunda pasada para referencias
```

## 🛠️ Requisitos del Sistema

### Para MATLAB
- MATLAB R2018b o superior
- Toolboxes opcionales (mejoran pero no son esenciales):
  - Symbolic Math Toolbox
  - Curve Fitting Toolbox

### Para LaTeX

**Overleaf (Recomendado):**
- ✅ **No requiere instalación local**
- ✅ Navegador web moderno
- ✅ Cuenta gratuita de Overleaf

**Compilación Local:**

#### Distribución LaTeX
- **Windows**: [MiKTeX](https://miktex.org/) o [TeX Live](https://www.tug.org/texlive/)
- **macOS**: [MacTeX](https://www.tug.org/mactex/)
- **Linux**: TeX Live (desde repositorios)

```bash
# Ubuntu/Debian
sudo apt-get install texlive-full

# Fedora
sudo dnf install texlive-scheme-full

# Arch Linux
sudo pacman -S texlive-most
```

#### Editor Recomendado (Local)
- **VS Code** + LaTeX Workshop extension
- **TeXstudio**
- **Texmaker**
- **Overleaf Desktop** (versión local de Overleaf)

## 📊 Figuras Generadas

Cada script de MATLAB genera múltiples visualizaciones:

### Ejercicio 1 - Ecuación de Calor
1. `ejercicio1_condicion_inicial.png` - Distribución triangular inicial vs aproximación
2. `ejercicio1_evolucion_temporal.png` - Evolución en t = 0, 10, 50, 100, 200
3. `ejercicio1_superficie_3d.png` - Superficie 3D u(x,t)
4. `ejercicio1_contorno.png` - Mapa de contorno de temperatura
5. `ejercicio1_convergencia.png` - Convergencia de la serie de Fourier

### Ejercicio 2 - Ecuación de Onda
1. `ejercicio2_perfil_inicial.png` - Perfil zigzag inicial
2. `ejercicio2_snapshots.png` - Snapshots en diferentes tiempos
3. `ejercicio2_superficie_3d.png` - Evolución espacio-temporal 3D
4. `ejercicio2_espectro.png` - Espectro de frecuencias (modos)
5. `ejercicio2_energia.png` - Conservación de energía
6. `ejercicio2_frame_XX.png` - 5 frames de animación

### Ejercicio 3 - Laplace (y=b no homogénea)
1. `ejercicio3_superficie_3d.png` - Distribución 3D de temperatura
2. `ejercicio3_contorno.png` - Isotermas
3. `ejercicio3_perfiles.png` - Perfiles a diferentes alturas
4. `ejercicio3_gradiente.png` - Campo vectorial ∇u
5. `ejercicio3_convergencia.png` - Convergencia en el centro

### Ejercicio 4 - Laplace (y=0 no homogénea)
1. `ejercicio4_superficie_3d.png` - Distribución 3D caso 2
2. `ejercicio4_contorno.png` - Isotermas caso 2
3. `ejercicios3y4_comparacion.png` - Comparación lado a lado

## ⚙️ Personalización de MATLAB

### Modificar Parámetros Físicos

**En ejercicio1_calor.m:**
```matlab
L = 100;              % Longitud de la barra
k = 1.6352;          % Difusividad térmica
N_terms = 5;         % Número de términos
```

**En ejercicio2_onda.m:**
```matlab
L = 1;               % Longitud normalizada
c = 1;               % Velocidad de propagación
N_terms = 10;        % Términos en la serie
```

**En ejercicio3_laplace.m:**
```matlab
a = 1; b = 1;        % Dimensiones de la placa
N_terms = 30;        % Términos para convergencia
f_caso1 = @(x) 100*sin(pi*x/a);  % Condición de frontera
```

### Optimizar Rendimiento

Si experimentas lentitud:
```matlab
% Reduce puntos de malla
x_grid = linspace(0, L, 50);    % En lugar de 100
t_grid = linspace(0, 200, 50);  % En lugar de 100

% Reduce términos de serie
N_terms = 10;  % En lugar de 30
```

## 📝 Uso del Documento LaTeX

### Información de Autores

Los autores actuales (líneas 138-151 en `main.tex`):

```latex
\author{
    Sebastian Andrés Rodríguez Carrillo \\
    José Luis López Ruiz \\
    Diego Alejandro Rodríguez Gómez \\
    Daniel García Araque
}
```

### Agregar Figuras Adicionales

Para incluir nuevas figuras en LaTeX:

```latex
\begin{figure}[h]
\centering
\includegraphics[width=0.85\textwidth]{tu_nueva_figura.png}
\caption{Descripción de tu figura}
\label{fig:tu_etiqueta}
\end{figure}
```

**Referencias cruzadas:**
```latex
Como se observa en la Figura \ref{fig:tu_etiqueta}...
```

### Comandos Matemáticos Incluidos

```latex
\abs{x}              % Valor absoluto: |x|
\norm{x}             % Norma: ||x||
\deriv{y}{x}         % Derivada: dy/dx
\pderiv{u}{x}        % Derivada parcial: ∂u/∂x
\vect{v}             % Vector: v en negrita
\matr{A}             % Matriz: A en negrita
```

## 🎨 Estilos y Configuración

### Márgenes y Geometría

El documento usa márgenes estándar académicos (línea 41):
```latex
\geometry{left=2.5cm, right=2.5cm, top=3cm, bottom=3cm}
```

### Colores de Hiperenlaces

Configuración en línea 50:
```latex
\hypersetup{
    colorlinks=true,
    linkcolor=blue,    % Enlaces internos
    citecolor=blue,    # Citas bibliográficas
    urlcolor=blue      % URLs externas
}
```

### Encabezados y Pies de Página

Personalización en línea 102:
```latex
\lhead{Tu Encabezado Izquierdo}
\rhead{Tu Encabezado Derecho}
\cfoot{\thepage}
```

## 🔧 Solución de Problemas

### Problemas con MATLAB

**Error: "Out of memory"**
```matlab
% Solución: Reduce puntos de malla
x_grid = linspace(0, L, 50);  % En lugar de 100
```

**Las figuras no se guardan**
- Verifica permisos de escritura en el directorio
- Ejecuta MATLAB como administrador (Windows)
- Verifica espacio en disco

**Gráficas vacías o incorrectas**
- Aumenta `N_terms` si la serie no converge
- Verifica los parámetros físicos (k, c, a, b)
- Revisa los límites de dominio

### Problemas con LaTeX

**Error: "File 'ejercicio1_*.png' not found"**
1. Ejecuta primero los scripts de MATLAB
2. Copia todos los PNG al directorio de main.tex
3. En Overleaf, verifica que las imágenes estén subidas

**Compilación lenta en Overleaf**
- Normal para documentos con muchas figuras
- Primera compilación: ~30-60 segundos
- Compilaciones posteriores: ~10-20 segundos

**Error: "Package babel error"**
```latex
% Asegúrate de tener:
\usepackage[spanish,es-tabla]{babel}
```

**Las figuras no aparecen en el PDF**
- Verifica la extensión del archivo (.png, no .PNG)
- Usa rutas relativas, no absolutas
- En Windows, usa `/` en lugar de `\` en las rutas

## 📚 Referencias Bibliográficas

El documento incluye las siguientes referencias sobre EDPs:

1. Strauss, W. A. (2007). *Partial Differential Equations: An Introduction*
2. Haberman, R. (2012). *Applied PDEs with Fourier Series and Boundary Value Problems*
3. Evans, L. C. (2010). *Partial Differential Equations*
4. Powers, D. L. (2006). *Boundary Value Problems and PDEs*
5. Farlow, S. J. (1993). *PDEs for Scientists and Engineers*
6. Asmar, N. H. (2016). *PDEs with Fourier Series and Boundary Value Problems*
7. Pinchover & Rubinstein (2005). *Introduction to PDEs*
8. Zill & Wright (2014). *Differential Equations with Boundary-Value Problems*

## 🔗 Recursos Adicionales

### Documentación MATLAB
- [MATLAB Documentation](https://www.mathworks.com/help/matlab/)
- [MATLAB Graphics](https://www.mathworks.com/help/matlab/graphics.html)
- [MATLAB Plot Gallery](https://www.mathworks.com/products/matlab/plot-gallery.html)

### Tutoriales LaTeX
- [Overleaf Learn LaTeX](https://www.overleaf.com/learn)
- [LaTeX Wikibook](https://en.wikibooks.org/wiki/LaTeX)
- [TikZ & PGF Manual](http://mirrors.ctan.org/graphics/pgf/base/doc/pgfmanual.pdf)

### Herramientas Útiles
- [Detexify](http://detexify.kirelabs.org/) - Encuentra comandos LaTeX dibujando símbolos
- [Mathpix](https://mathpix.com/) - Convierte ecuaciones escritas a LaTeX
- [Desmos](https://www.desmos.com/) - Calculadora gráfica online

### Referencias de Métodos Numéricos
- Burden & Faires - *Numerical Analysis*
- Chapra & Canale - *Numerical Methods for Engineers*
- Heath - *Scientific Computing*

## 🤝 Contribuciones y Mejoras

Este proyecto es una plantilla base. Puedes extenderlo agregando:

- ✨ Más métodos numéricos (Diferencias Finitas, FFT, etc.)
- 📊 Ejercicios de diferentes niveles de complejidad
- 🧮 Implementaciones en Python/MATLAB/Octave
- 📈 Más visualizaciones y gráficos comparativos
- 🔬 Aplicaciones prácticas en ingeniería

### Sugerencias de Extensión

1. **Métodos Iterativos para Sistemas Lineales**
   - Jacobi, Gauss-Seidel, SOR
   - Análisis de convergencia

2. **Ajuste de Curvas**
   - Mínimos cuadrados lineales
   - Regresión no lineal

3. **Ecuaciones Diferenciales Parciales**
   - Método de diferencias finitas
   - Ecuación del calor y de ondas

4. **Análisis de Fourier**
   - Series de Fourier
   - Transformada Rápida de Fourier (FFT)

## 📄 Licencia

Este proyecto es material educativo de código abierto. Puedes:
- ✅ Usar libremente para fines académicos
- ✅ Modificar y adaptar a tus necesidades
- ✅ Compartir con atribución apropiada

## 👨‍🏫 Información del Curso

**Universidad**: Universidad Militar Nueva Granada  
**Programa**: Ingeniería Mecatrónica  
**Semestre**: Sexto Semestre  
**Asignatura**: Métodos Numéricos

---

## 🚀 Inicio Rápido (3 pasos)

1. **Abre Overleaf** → https://www.overleaf.com/
2. **Sube `main.tex`** → New Project → Upload Project
3. **Compila** → Click en "Recompile" (botón verde)

**¡Listo!** Tendrás un documento PDF profesional de métodos numéricos.

---

## 📧 Soporte

Si tienes preguntas o encuentras errores:
1. Revisa la sección de solución de problemas arriba
2. Consulta la documentación de Overleaf
3. Busca en [TeX StackExchange](https://tex.stackexchange.com/)

---

**Última actualización**: Noviembre 2025  
**Versión del documento**: 1.0  
**Compatibilidad**: Overleaf, TeX Live 2023+, MiKTeX 23+
