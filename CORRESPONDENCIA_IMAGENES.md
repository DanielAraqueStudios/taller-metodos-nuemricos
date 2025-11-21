# 📸 Correspondencia de Imágenes: MATLAB ↔ LaTeX

## Guía de Nombres de Archivos

Esta tabla muestra exactamente cómo se llaman las imágenes generadas por MATLAB y cómo se incluyen en el documento LaTeX.

---

## 🔥 Ejercicio 1: Ecuación de Calor

| # | Archivo MATLAB Generado | Comando LaTeX | Ubicación en main.tex |
|---|------------------------|---------------|----------------------|
| 1 | `ejercicio1_condicion_inicial.png` | `\includegraphics[width=0.75\textwidth]{ejercicio1_condicion_inicial.png}` | ~Línea 373 |
| 2 | `ejercicio1_evolucion_temporal.png` | `\includegraphics[width=0.85\textwidth]{ejercicio1_evolucion_temporal.png}` | ~Línea 379 |
| 3 | `ejercicio1_superficie_3d.png` | `\includegraphics[width=0.9\textwidth]{ejercicio1_superficie_3d.png}` | ~Línea 385 |
| 4 | `ejercicio1_contorno.png` | `\includegraphics[width=0.85\textwidth]{ejercicio1_contorno.png}` | ~Línea 391 |
| 5 | `ejercicio1_convergencia.png` | `\includegraphics[width=0.75\textwidth]{ejercicio1_convergencia.png}` | ~Línea 397 |

**Script MATLAB:** `ejercicio1_calor.m`  
**Total de imágenes:** 5

---

## 🌊 Ejercicio 2: Ecuación de Onda

| # | Archivo MATLAB Generado | Comando LaTeX | Ubicación en main.tex |
|---|------------------------|---------------|----------------------|
| 1 | `ejercicio2_perfil_inicial.png` | `\includegraphics[width=0.75\textwidth]{ejercicio2_perfil_inicial.png}` | ~Línea 533 |
| 2 | `ejercicio2_snapshots.png` | `\includegraphics[width=0.85\textwidth]{ejercicio2_snapshots.png}` | ~Línea 539 |
| 3 | `ejercicio2_superficie_3d.png` | `\includegraphics[width=0.9\textwidth]{ejercicio2_superficie_3d.png}` | ~Línea 545 |
| 4 | `ejercicio2_espectro.png` | `\includegraphics[width=0.75\textwidth]{ejercicio2_espectro.png}` | ~Línea 551 |
| 5 | `ejercicio2_energia.png` | `\includegraphics[width=0.75\textwidth]{ejercicio2_energia.png}` | ~Línea 557 |
| 6-10 | `ejercicio2_frame_01.png` | *(No incluidos en LaTeX, solo para animación)* | - |
| | `ejercicio2_frame_15.png` | | |
| | `ejercicio2_frame_30.png` | | |
| | `ejercicio2_frame_45.png` | | |
| | `ejercicio2_frame_60.png` | | |

**Script MATLAB:** `ejercicio2_onda.m`  
**Total de imágenes:** 11 generadas (5 usadas en LaTeX)

---

## 🌡️ Ejercicio 3: Ecuación de Laplace (Caso 1)

| # | Archivo MATLAB Generado | Comando LaTeX | Ubicación en main.tex |
|---|------------------------|---------------|----------------------|
| 1 | `ejercicio3_superficie_3d.png` | `\includegraphics[width=0.9\textwidth]{ejercicio3_superficie_3d.png}` | ~Línea 750 |
| 2 | `ejercicio3_contorno.png` | `\includegraphics[width=0.85\textwidth]{ejercicio3_contorno.png}` | ~Línea 756 |
| 3 | `ejercicio3_perfiles.png` | `\includegraphics[width=0.85\textwidth]{ejercicio3_perfiles.png}` | ~Línea 762 |
| 4 | `ejercicio3_gradiente.png` | `\includegraphics[width=0.85\textwidth]{ejercicio3_gradiente.png}` | ~Línea 768 |
| 5 | `ejercicio3_convergencia.png` | `\includegraphics[width=0.75\textwidth]{ejercicio3_convergencia.png}` | ~Línea 774 |

**Script MATLAB:** `ejercicio3_laplace.m`  
**Total de imágenes:** 5

---

## 🌡️ Ejercicio 4: Ecuación de Laplace (Caso 2)

| # | Archivo MATLAB Generado | Comando LaTeX | Ubicación en main.tex |
|---|------------------------|---------------|----------------------|
| 1 | `ejercicio4_superficie_3d.png` | `\includegraphics[width=0.9\textwidth]{ejercicio4_superficie_3d.png}` | ~Línea 863 |
| 2 | `ejercicio4_contorno.png` | `\includegraphics[width=0.85\textwidth]{ejercicio4_contorno.png}` | ~Línea 869 |
| 3 | `ejercicios3y4_comparacion.png` | `\includegraphics[width=\textwidth]{ejercicios3y4_comparacion.png}` | ~Línea 875 |

**Script MATLAB:** `ejercicio3_laplace.m` (mismo script genera ejercicios 3 y 4)  
**Total de imágenes:** 3

---

## 📊 Resumen Total

| Categoría | Cantidad |
|-----------|----------|
| **Ejercicio 1** | 5 imágenes |
| **Ejercicio 2** | 11 imágenes (5 en LaTeX) |
| **Ejercicio 3** | 5 imágenes |
| **Ejercicio 4** | 3 imágenes |
| **TOTAL GENERADAS** | **24 archivos PNG** |
| **TOTAL EN LATEX** | **21 imágenes incluidas** |

---

## ✅ Lista de Verificación

Después de ejecutar los scripts MATLAB, verifica que existen estos archivos:

### Ejercicio 1 (5 archivos)
- [ ] ejercicio1_condicion_inicial.png
- [ ] ejercicio1_evolucion_temporal.png
- [ ] ejercicio1_superficie_3d.png
- [ ] ejercicio1_contorno.png
- [ ] ejercicio1_convergencia.png

### Ejercicio 2 (11 archivos)
- [ ] ejercicio2_perfil_inicial.png
- [ ] ejercicio2_snapshots.png
- [ ] ejercicio2_superficie_3d.png
- [ ] ejercicio2_espectro.png
- [ ] ejercicio2_energia.png
- [ ] ejercicio2_frame_01.png
- [ ] ejercicio2_frame_15.png
- [ ] ejercicio2_frame_30.png
- [ ] ejercicio2_frame_45.png
- [ ] ejercicio2_frame_60.png

### Ejercicio 3 (5 archivos)
- [ ] ejercicio3_superficie_3d.png
- [ ] ejercicio3_contorno.png
- [ ] ejercicio3_perfiles.png
- [ ] ejercicio3_gradiente.png
- [ ] ejercicio3_convergencia.png

### Ejercicio 4 (3 archivos)
- [ ] ejercicio4_superficie_3d.png
- [ ] ejercicio4_contorno.png
- [ ] ejercicios3y4_comparacion.png

---

## 🔧 Comandos para Verificar

### En Windows (PowerShell):
```powershell
Get-ChildItem -Filter "ejercicio*.png" | Select-Object Name
```

### En Linux/Mac:
```bash
ls -1 ejercicio*.png
```

### Contar archivos:
```bash
# Windows PowerShell
(Get-ChildItem -Filter "ejercicio*.png").Count

# Linux/Mac
ls ejercicio*.png | wc -l
```

Debería mostrar **24 archivos**.

---

## 📁 Ubicación de Archivos

Para que LaTeX encuentre las imágenes:

### Opción 1: Mismo directorio (Recomendado)
```
taller-metodos-nuemricos/
├── main.tex
├── ejercicio1_condicion_inicial.png
├── ejercicio1_evolucion_temporal.png
├── ejercicio1_superficie_3d.png
└── ... (todos los PNG)
```

### Opción 2: Subdirectorio
```
taller-metodos-nuemricos/
├── main.tex
└── figuras/
    ├── ejercicio1_condicion_inicial.png
    ├── ejercicio1_evolucion_temporal.png
    └── ... (todos los PNG)
```

Si usas subdirectorio, modifica en `main.tex`:
```latex
\includegraphics[width=0.75\textwidth]{figuras/ejercicio1_condicion_inicial.png}
```

---

## 🚨 Problemas Comunes

### Problema: LaTeX no encuentra la imagen

**Error típico:**
```
! LaTeX Error: File 'ejercicio1_condicion_inicial.png' not found.
```

**Soluciones:**
1. Verifica que el archivo PNG existe en el directorio
2. Verifica que el nombre es **exactamente** igual (mayúsculas/minúsculas)
3. En Windows, usa `/` no `\` en las rutas
4. No uses espacios en los nombres de archivo

### Problema: Imagen aparece muy grande/pequeña

Ajusta el parámetro `width`:
```latex
% Más pequeño
\includegraphics[width=0.5\textwidth]{imagen.png}

% Más grande
\includegraphics[width=1.0\textwidth]{imagen.png}

% Tamaño fijo
\includegraphics[width=10cm]{imagen.png}
```

### Problema: Imagen con mala calidad

Aumenta la resolución en MATLAB antes de guardar:
```matlab
set(gcf, 'PaperPositionMode', 'auto');
print('nombre_figura', '-dpng', '-r300');  % 300 DPI
```

---

## 📝 Notas Importantes

1. **Nombres sensibles a mayúsculas:** `ejercicio1.png` ≠ `Ejercicio1.png`
2. **No renombres los archivos** después de generarlos con MATLAB
3. **Todos los PNG deben estar** en el mismo lugar que `main.tex` (o en subdirectorio configurado)
4. **En Overleaf:** Sube todos los PNG en un solo paso (arrastra y suelta)
5. **Extensión:** Siempre `.png` (minúsculas)

---

## 🎯 Workflow Recomendado

1. ✅ Ejecuta los 3 scripts MATLAB
2. ✅ Verifica que se generaron 24 archivos PNG
3. ✅ Copia todos los PNG al directorio de `main.tex`
4. ✅ Compila `main.tex` con pdfLaTeX
5. ✅ Verifica que aparecen las 21 figuras en el PDF

---

**Última actualización:** Noviembre 2025
