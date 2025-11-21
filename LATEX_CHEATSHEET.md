# 📚 CHEAT SHEET - COMANDOS LaTeX PARA MÉTODOS NUMÉRICOS

## 🎯 Comandos Básicos del Documento

### Estructura del Documento
```latex
\documentclass[12pt,a4paper]{article}  % Clase y opciones
\usepackage{paquete}                   % Importar paquetes
\begin{document}                       % Inicio del documento
\end{document}                         % Fin del documento
```

### Secciones
```latex
\section{Título de Sección}
\subsection{Subtítulo}
\subsubsection{Sub-subtítulo}
\paragraph{Párrafo con título}
```

---

## ➕ Matemáticas - Modo Inline y Display

### Matemáticas en Línea (Inline)
```latex
La ecuación $f(x) = x^2 + 2x + 1$ es...
El valor de $\pi \approx 3.1416$ representa...
```

### Matemáticas en Display (Centradas)
```latex
\begin{equation}
    f(x) = x^2 + 2x + 1
\end{equation}

% Sin numeración
\begin{equation*}
    f(x) = x^2 + 2x + 1
\end{equation*}

% O abreviado
\[ f(x) = x^2 + 2x + 1 \]
```

---

## 🔢 Operadores Matemáticos Comunes

### Operaciones Básicas
```latex
$x + y$              % Suma
$x - y$              % Resta
$x \cdot y$          % Multiplicación (punto)
$x \times y$         % Multiplicación (cruz)
$\frac{a}{b}$        % Fracción a/b
$\sqrt{x}$           % Raíz cuadrada
$\sqrt[n]{x}$        % Raíz n-ésima
$x^n$                % Potencia (superíndice)
$x_i$                % Subíndice
$|x|$                % Valor absoluto simple
$\left|x\right|$     % Valor absoluto ajustable
```

### Funciones Comunes
```latex
$\sin(x)$            % Seno
$\cos(x)$            % Coseno
$\tan(x)$            % Tangente
$\log(x)$            % Logaritmo
$\ln(x)$             % Logaritmo natural
$\exp(x)$            % Exponencial
$e^x$                % e elevado a x
```

### Límites, Sumas e Integrales
```latex
\lim_{x \to 0} f(x)                    % Límite
\sum_{i=1}^{n} x_i                     % Sumatoria
\prod_{i=1}^{n} x_i                    % Productoria
\int_{a}^{b} f(x) \, dx                % Integral definida
\int f(x) \, dx                        % Integral indefinida
\iint, \iiint                          % Integrales múltiples
```

---

## 📊 Ecuaciones Múltiples (Alineadas)

### Align (Con Numeración)
```latex
\begin{align}
    f(x) &= x^2 + 2x + 1 \\
         &= (x + 1)^2 \\
         &= x^2 + 2x + 1
\end{align}
```

### Align* (Sin Numeración)
```latex
\begin{align*}
    a &= b + c \\
    d &= e + f
\end{align*}
```

### Casos (Cases)
```latex
\begin{equation}
    f(x) = \begin{cases}
        x^2 & \text{si } x \geq 0 \\
        -x^2 & \text{si } x < 0
    \end{cases}
\end{equation}
```

---

## 🔣 Símbolos Griegos

### Letras Griegas Minúsculas
```latex
$\alpha$, $\beta$, $\gamma$, $\delta$
$\epsilon$, $\varepsilon$   % Dos versiones de epsilon
$\theta$, $\vartheta$
$\pi$, $\phi$, $\varphi$
$\lambda$, $\mu$, $\nu$
$\sigma$, $\tau$, $\omega$
```

### Letras Griegas Mayúsculas
```latex
$\Gamma$, $\Delta$, $\Theta$
$\Lambda$, $\Pi$, $\Sigma$
$\Phi$, $\Psi$, $\Omega$
```

---

## 🎨 Matrices y Vectores

### Matriz con Corchetes
```latex
\begin{equation}
    \mathbf{A} = \begin{bmatrix}
        a_{11} & a_{12} & a_{13} \\
        a_{21} & a_{22} & a_{23} \\
        a_{31} & a_{32} & a_{33}
    \end{bmatrix}
\end{equation}
```

### Matriz con Paréntesis
```latex
\begin{pmatrix}
    1 & 2 & 3 \\
    4 & 5 & 6
\end{pmatrix}
```

### Vector
```latex
\mathbf{v} = \begin{bmatrix}
    v_1 \\ v_2 \\ v_3
\end{bmatrix}
```

### Matriz Aumentada (para sistemas lineales)
```latex
\left[\begin{array}{ccc|c}
    1 & 2 & 3 & 4 \\
    5 & 6 & 7 & 8 \\
    9 & 10 & 11 & 12
\end{array}\right]
```

---

## 📋 Tablas Profesionales con Booktabs

### Tabla Básica
```latex
\begin{table}[h]
\centering
\caption{Título de la Tabla}
\label{tab:etiqueta}
\begin{tabular}{@{}lccr@{}}  % l=izq, c=centro, r=der
\toprule
\textbf{Columna 1} & \textbf{Col 2} & \textbf{Col 3} & \textbf{Col 4} \\ 
\midrule
Fila 1 & dato & dato & dato \\
Fila 2 & dato & dato & dato \\
Fila 3 & dato & dato & dato \\
\bottomrule
\end{tabular}
\end{table}
```

### Referencias a Tablas
```latex
Ver Tabla~\ref{tab:etiqueta} para más detalles.
```

---

## 📈 Gráficos con TikZ y PGFPlots

### Gráfico Simple de Función
```latex
\begin{tikzpicture}
    \begin{axis}[
        width=10cm,
        height=7cm,
        xlabel={$x$},
        ylabel={$f(x)$},
        grid=major,
        domain=0:10,
        samples=100
    ]
    \addplot[blue, thick] {x^2};
    \legend{$f(x) = x^2$}
    \end{axis}
\end{tikzpicture}
```

### Gráfico con Múltiples Funciones
```latex
\begin{tikzpicture}
    \begin{axis}[
        xlabel={$x$}, ylabel={$y$},
        legend pos=north west
    ]
    \addplot[red, thick] {x^2};
    \addplot[blue, dashed] {2*x};
    \legend{$x^2$, $2x$}
    \end{axis}
\end{tikzpicture}
```

### Gráfico con Puntos de Datos
```latex
\begin{tikzpicture}
    \begin{axis}[...]
    \addplot[only marks, mark=*, red] 
        coordinates {(0,1) (1,2) (2,4) (3,8)};
    \end{axis}
\end{tikzpicture}
```

### Escala Logarítmica
```latex
\begin{axis}[
    ymode=log,  % Escala log en Y
    xmode=log   % Escala log en X
]
...
\end{axis}
```

---

## 🧮 Algoritmos y Pseudocódigo

### Algoritmo Básico
```latex
\begin{algorithm}[H]
\caption{Nombre del Algoritmo}
\KwIn{Parámetros de entrada}
\KwOut{Resultado}

$x \leftarrow 0$\;

\While{condición}{
    hacer algo\;
    $x \leftarrow x + 1$\;
}

\If{condición}{
    hacer A\;
}
\Else{
    hacer B\;
}

\Return{x}\;
\end{algorithm}
```

---

## 📚 Entornos Personalizados del Documento

### Ejercicios y Soluciones
```latex
\begin{exercise}[Título del Ejercicio]
Planteamiento del problema...
\end{exercise}

\begin{solution}
Desarrollo de la solución...
\end{solution}
```

### Teoremas, Definiciones, etc.
```latex
\begin{theorem}
Enunciado del teorema...
\end{theorem}

\begin{definition}
Definición matemática...
\end{definition}

\begin{remark}
Observación importante...
\end{remark}
```

---

## 🎨 Formato de Texto

### Estilos Básicos
```latex
\textbf{Texto en negrita}
\textit{Texto en cursiva}
\texttt{Texto monoespaciado (código)}
\underline{Texto subrayado}
```

### Tamaños de Fuente
```latex
{\tiny minúsculo}
{\small pequeño}
{\normalsize normal}
{\large grande}
{\Large más grande}
{\LARGE muy grande}
{\huge enorme}
{\Huge gigante}
```

---

## 🎯 Comandos Customizados (Ya Definidos en main.tex)

### Errores
```latex
\errrel              % Error relativo: εᵣ
\errabs              % Error absoluto: εₐ
\abs{x}              % Valor absoluto: |x|
\norm{x}             % Norma: ||x||
```

### Iteraciones
```latex
\iter{k}             % x^(k) - notación de iteración
```

### Derivadas
```latex
\deriv{y}{x}         % dy/dx
\pderiv{u}{x}        % ∂u/∂x (derivada parcial)
```

### Vectores y Matrices (en negrita)
```latex
\vect{v}             % Vector v
\matr{A}             % Matriz A
```

---

## 🔗 Referencias Cruzadas

### Etiquetas y Referencias
```latex
\begin{equation}
    E = mc^2
    \label{eq:einstein}
\end{equation}

Como se muestra en la Ecuación~\ref{eq:einstein}...
```

### Referencias a Secciones, Tablas, Figuras
```latex
\section{Mi Sección}
\label{sec:mi_seccion}

Ver Sección~\ref{sec:mi_seccion}
Ver Tabla~\ref{tab:mi_tabla}
Ver Figura~\ref{fig:mi_figura}
```

---

## 🎨 Espaciado y Formato

### Espacios Horizontales
```latex
\,              % Espacio pequeño
\quad           % Espacio mediano
\qquad          % Espacio grande
\hspace{1cm}    % Espacio personalizado
```

### Espacios Verticales
```latex
\vspace{0.5cm}      % Espacio vertical
\smallskip          % Espacio pequeño
\medskip            % Espacio mediano
\bigskip            % Espacio grande
```

### Nueva Página
```latex
\newpage            % Salto de página
\clearpage          % Salto de página (procesa floats)
```

---

## 📝 Listas

### Lista con Viñetas
```latex
\begin{itemize}
    \item Primer elemento
    \item Segundo elemento
    \item Tercer elemento
\end{itemize}
```

### Lista Numerada
```latex
\begin{enumerate}
    \item Primer elemento
    \item Segundo elemento
    \item Tercer elemento
\end{enumerate}
```

### Lista de Descripción
```latex
\begin{description}
    \item[Término 1] Descripción del término 1
    \item[Término 2] Descripción del término 2
\end{description}
```

---

## 🔢 Símbolos Especiales Comunes

### Comparación y Relaciones
```latex
$<$, $>$            % Menor que, mayor que
$\leq$, $\geq$      % Menor o igual, mayor o igual
$\ll$, $\gg$        % Mucho menor, mucho mayor
$\neq$              % No igual
$\approx$           % Aproximadamente
$\equiv$            % Equivalente
$\sim$              % Similar
$\propto$           % Proporcional
```

### Flechas
```latex
$\rightarrow$       % Flecha derecha
$\leftarrow$        % Flecha izquierda
$\leftrightarrow$   % Flecha doble
$\Rightarrow$       % Implica
$\Leftrightarrow$   % Si y solo si
```

### Conjuntos
```latex
$\in$               % Pertenece
$\notin$            % No pertenece
$\subset$           % Subconjunto
$\cup$              % Unión
$\cap$              % Intersección
$\emptyset$         % Conjunto vacío
$\mathbb{R}$        % Números reales
$\mathbb{N}$        % Números naturales
$\mathbb{Z}$        % Números enteros
$\mathbb{Q}$        % Números racionales
$\mathbb{C}$        % Números complejos
```

### Otros Símbolos
```latex
$\infty$            % Infinito
$\partial$          % Derivada parcial
$\nabla$            % Nabla (gradiente)
$\cdot$             % Punto (multiplicación)
$\pm$               % Más o menos
$\mp$               % Menos o más
$\forall$           % Para todo
$\exists$           % Existe
```

---

## 🔍 Resultados Destacados (Box)

### Recuadro Simple
```latex
\boxed{x = 42}
```

### Resultado Final
```latex
\textbf{Resultado:} $\boxed{x \approx 2.0947}$
```

---

## 📌 Comentarios en LaTeX

```latex
% Esto es un comentario de una línea

\begin{comment}
Esto es un comentario
de múltiples líneas
(requiere \usepackage{verbatim})
\end{comment}
```

---

## 🎯 Tips Rápidos

### Para Compilar Más Rápido
1. Usa `draft` durante edición: `\documentclass[draft]{article}`
2. Comenta figuras pesadas temporalmente con `%`

### Para Depurar Errores
1. Lee el mensaje de error desde la primera línea
2. Busca la línea indicada en el `.log`
3. Común: olvido de `$`, `}`, `\end{...}`

### Caracteres Especiales que Necesitan Escape
```latex
\$              % Signo de dólar
\%              % Porcentaje
\&              % Ampersand
\#              % Numeral
\_              % Guion bajo
\{              % Llave izquierda
\}              % Llave derecha
\textbackslash  % Barra invertida
```

---

## 🚀 Compilación

### En Overleaf
- Click en **"Recompile"** (botón verde)
- Atajo: **Ctrl+Enter** (Cmd+Enter en Mac)

### Localmente
```bash
pdflatex main.tex
pdflatex main.tex  # Dos veces para referencias
```

---

## 📖 Recursos Adicionales

- **Detexify**: http://detexify.kirelabs.org (dibuja símbolos)
- **LaTeX Wikibook**: https://en.wikibooks.org/wiki/LaTeX
- **Overleaf Docs**: https://www.overleaf.com/learn
- **TeX StackExchange**: https://tex.stackexchange.com/

---

**¡Guarda este cheat sheet para referencia rápida!** 🎓✨

*Última actualización: Noviembre 2025*
