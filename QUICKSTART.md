# 🚀 GUÍA DE INICIO RÁPIDO - OVERLEAF

## ⚡ Compilación Inmediata en Overleaf (2 minutos)

### Opción A: Importación Directa (MÁS FÁCIL)

1. Ve a [Overleaf.com](https://www.overleaf.com/) e inicia sesión
2. Click en **"New Project"** (botón verde superior izquierdo)
3. Selecciona **"Upload Project"**
4. Arrastra el archivo `main.tex` o comprime la carpeta completa
5. ¡Listo! Click en **"Recompile"** para ver tu PDF

**Tiempo total**: ~30 segundos + compilación (5-10 seg)

---

### Opción B: Copiar y Pegar (ALTERNATIVA)

1. Ve a [Overleaf.com](https://www.overleaf.com/)
2. Click **"New Project"** → **"Blank Project"**
3. Nombra tu proyecto: "Taller Métodos Numéricos"
4. Borra todo el contenido de `main.tex` que aparece por defecto
5. Abre el archivo `main.tex` de este repositorio en un editor de texto
6. Copia TODO el contenido (Ctrl+A → Ctrl+C)
7. Pégalo en el editor de Overleaf (Ctrl+V)
8. Click **"Recompile"**

**Tiempo total**: ~2 minutos

---

## 🎯 Verificación de Éxito

Después de compilar, deberías ver:

✅ Un documento PDF de ~20-25 páginas  
✅ Tabla de contenidos con 5 secciones principales  
✅ Gráficos de convergencia y funciones  
✅ Tablas con resultados numéricos formateadas  
✅ Algoritmos en pseudocódigo  
✅ Ecuaciones matemáticas correctamente formateadas  

---

## 🔧 Si Algo Sale Mal...

### Error de Compilación

**Problema**: "Compilation failed" o mensajes de error rojos

**Soluciones**:
1. Click en el botón **"Logs and output files"** para ver detalles
2. Busca la primera línea que dice "Error" o "!"
3. Errores comunes:

   **"Undefined control sequence"**
   - Un comando no está definido
   - Verifica que copiaste TODO el preámbulo (líneas 1-120)

   **"Package X not found"**
   - Raro en Overleaf (instala paquetes automáticamente)
   - Espera 30 segundos y recompila

   **"Dimension too large"**
   - Problema con gráficos TikZ
   - Reduce `samples=100` a `samples=50` en los gráficos

### Gráficos No Aparecen

**Solución**: Verifica que estas líneas estén en el preámbulo:
```latex
\usepackage{tikz}
\usepackage{pgfplots}
\pgfplotsset{compat=1.18}
```

### Caracteres Especiales Raros (Acentos)

**Solución**: Verifica estas líneas:
```latex
\usepackage[utf8]{inputenc}
\usepackage[spanish,es-tabla]{babel}
```

---

## 📝 Primera Personalización (3 minutos)

### 1. Cambiar Información del Título

Busca la línea **~125** (donde dice `\title{`):

```latex
\title{
    \textbf{\Large TU NOMBRE DE TALLER} \\  % ← Cambia esto
    \vspace{0.5cm}
    \large TU SUBTÍTULO                      % ← Y esto
}

\author{
    TU UNIVERSIDAD \\              % ← Cambia estos
    TU FACULTAD \\
    TU PROGRAMA \\
    \textit{TU SEMESTRE}
}
```

### 2. Agregar Tu Propio Ejercicio

Busca el final de una sección (ej: después de línea ~500) y agrega:

```latex
\subsection{Tu Nuevo Método}

\begin{exercise}[Título de Tu Ejercicio]
Plantea tu problema aquí...
\end{exercise}

\begin{solution}
\textbf{Paso 1: Análisis del Problema}

Tu desarrollo...

\textbf{Resultado Final:}
\begin{equation}
    \boxed{x = \text{tu respuesta}}
\end{equation}
\end{solution}
```

### 3. Recompilar

Click en **"Recompile"** para ver tus cambios.

---

## 🎨 Personalización Visual Rápida

### Cambiar Colores de Enlaces

Busca línea **~50**:
```latex
\hypersetup{
    linkcolor=blue,    % Cambia a: red, green, black, etc.
    citecolor=blue,
    urlcolor=blue
}
```

### Cambiar Encabezados

Busca línea **~102**:
```latex
\lhead{Tu Texto Izquierdo}
\rhead{Tu Texto Derecho}
```

---

## 📦 Contenido Incluido en el Documento

El `main.tex` ya contiene ejercicios resueltos de:

1. **Métodos de Búsqueda de Raíces**
   - Bisección (con tabla de iteraciones)
   - Newton-Raphson (con análisis cuadrático)

2. **Interpolación**
   - Lagrange (con gráfico)
   - Construcción de polinomios

3. **Integración Numérica**
   - Trapecio compuesto
   - Análisis de error con n=4 y n=8

4. **Ecuaciones Diferenciales**
   - Método de Euler
   - Runge-Kutta 4º orden (RK4)
   - Gráficos comparativos

5. **Sistemas Lineales**
   - Eliminación gaussiana
   - Pivoteo parcial

**PLUS**: Algoritmos en pseudocódigo en el apéndice

---

## 🌐 Recursos Online para Aprender Más

### LaTeX Básico
- [Tutorial Overleaf (Español)](https://www.overleaf.com/learn/latex/Tutorials)
- [LaTeX en 30 minutos](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes)

### Símbolos Matemáticos
- [Detexify](http://detexify.kirelabs.org/classify.html) - Dibuja el símbolo que buscas
- [Lista completa de símbolos](http://tug.ctan.org/info/symbols/comprehensive/symbols-a4.pdf)

### Gráficos con TikZ
- [Ejemplos TikZ](http://www.texample.net/tikz/examples/)
- [Manual PGFPlots](http://mirrors.ctan.org/graphics/pgf/contrib/pgfplots/doc/pgfplots.pdf)

---

## ✅ Checklist de Verificación

Antes de enviar/compartir tu documento, verifica:

- [ ] El título y autor están personalizados
- [ ] Todos los ejercicios tienen sus soluciones completas
- [ ] Las ecuaciones están correctamente numeradas
- [ ] Las tablas tienen captions descriptivas
- [ ] Los gráficos se visualizan correctamente
- [ ] No hay errores de compilación (advertencias OK)
- [ ] La numeración de páginas es correcta
- [ ] Las referencias bibliográficas son apropiadas

---

## 🆘 Ayuda Rápida

### ¿Dónde está la línea X?

En Overleaf:
1. Presiona **Ctrl+L** (o Cmd+L en Mac)
2. Escribe el número de línea
3. Enter

### ¿Cómo buscar texto?

- **Ctrl+F** (Cmd+F en Mac) para buscar en el archivo actual

### ¿Cómo descargar el PDF?

1. Click en el icono de **descarga** junto al PDF (lado derecho)
2. O: Menú → Download → PDF

### ¿Cómo compartir con colaboradores?

1. Click en **"Share"** (botón superior derecho)
2. Agrega emails o genera link de solo lectura

---

## 🚀 Siguiente Nivel

Cuando domines lo básico, explora:

- **Dividir en archivos**: Usa `\input{archivo.tex}` para modularizar
- **Bibliografía avanzada**: Usa BibTeX con `referencias.bib`
- **Código fuente**: Agrega `\usepackage{listings}` para Python/MATLAB
- **Presentaciones**: Adapta el contenido a Beamer

---

## 📞 Contacto y Soporte

**Si necesitas ayuda**:
1. Lee el README.md completo (más detallado)
2. Revisa la documentación de Overleaf
3. Pregunta en [TeX StackExchange](https://tex.stackexchange.com/)

---

**¡Éxito con tu taller de Métodos Numéricos!** 🎓✨

---

*Última actualización: Noviembre 2025*  
*Compatible con: Overleaf (todas las versiones), TeX Live 2023+*
