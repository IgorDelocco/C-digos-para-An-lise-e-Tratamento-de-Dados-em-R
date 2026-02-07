## Análise de Artigos Científicos a partir de PDFs com R

### Descrição do Projeto

Este repositório reúne um código desenvolvido durante uma **Iniciação Científica (PIBIC) em 2025**, cujo objetivo foi auxiliar a **análise sistemática de artigos científicos** por meio da extração e análise de palavras mais frequentes em arquivos PDF.

A motivação do projeto surgiu da necessidade de comparar artigos, compreender rapidamente sobre o que tratam, identificar seu foco temático e os principais conceitos abordados, especialmente em etapas iniciais de revisão bibliográfica. Como objetivo futuro, também foi considerada a geração de **nuvens de palavras** para apoio visual à análise.

### Funcionalidades

- Extração de texto a partir de arquivos PDF  
- Frequência das palavras mais utilizadas  
- Geração de gráficos para apoio à análise textual  

### Limitações Atuais

O código possui um caráter **manual**, exigindo:
- Ajustes no número total de palavras analisadas para cada artigo  
- Remoção manual de termos irrelevantes que não contribuíam para a interpretação dos gráficos  

### Tecnologias Utilizadas

- **R**
- Pacotes como `pdftools`, `tidytext`, `dplyr`, `tm`, `ggplot2`
