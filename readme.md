# 140426

Labores de hoy: 

- Libro non parametric Kloke.
  - Tablas cruzadas 2x2 analisis completo.
- Package R con data.
- Funciones dplyr y ggplot.
- Data Cleaning.

Pendientes:

- Funciones para gráficar:
  - Boxplot con grupos| incluir facet_wrap
  - Histogramas
  - Pruebas chi-squared

Flujo de analisis de tablas:

```mermaid
flowchart TD
  A0(Importar data)--Limpiar Data-->A
  A(Dataframe)--Resumir-->B(tapply/aggregate)
  B--Organizar-->C(xtabs)--Analizar-->D(chisq.test)
  D--Revisar Tendencia-->E{Temporalidad}
  E--Longitudinal/Cohorte-->FF(Riesgo Relativo)-->F(Logit)
  E--Transversal/Caso-Control-->GG(Odd Ratio)-->G(Multinomial)
  F-->H
  G-->H[Analisis Profundo]
  H-->I(Ho y Contrastes)
  H-->J(Potencia de Prueba)
  H-->K(Grupos/Discriminante)
```