# Contrato Canônico — Nota Base (TRC)

## 1. Identidade

A **Nota Base** é o **primeiro artefato em Markdown (.md)** da pipeline TRC.

Sua função exclusiva é servir como **versão textual limpa, legível e auditável** da Nota Bruta, preservando integralmente o conteúdo original, porém **sem ruídos técnicos** que impeçam leitura humana contínua.

A Nota Base **não interpreta**, **não reorganiza**, **não sintetiza** e **não acrescenta conteúdo**.  
Ela existe para tornar o texto **legível**, não para torná-lo **melhor**.

---

## 2. Origem

A Nota Base é gerada **exclusivamente** a partir da **Nota Bruta** correspondente.

- Relação obrigatória: **1:1**
- Cada Nota Bruta gera **uma única** Nota Base
- Não existe Nota Base sem Nota Bruta prévia

A Nota Base **herda integralmente** o conteúdo textual da Nota Bruta, sendo considerada uma **camada de limpeza**, não de transformação conceitual.

---

## 3. Transformações permitidas

A criação da Nota Base permite **apenas transformações mecânicas e objetivas**, sem qualquer juízo semântico.

São permitidas:
- Remoção de timestamps
- Correção ortográfica mínima (erros evidentes de transcrição)
- Normalização básica de pontuação
- Ajustes técnicos de quebras de linha
- Remoção de marcas técnicas de captura de áudio ou ASR

Todas as transformações devem preservar:
- As palavras originais
- A ordem lógica do discurso
- O sentido literal do texto

---

## 4. Invariantes

A Nota Base deve cumprir **todas** as seguintes invariantes:

- O conteúdo textual é **equivalente** ao da Nota Bruta
- A ordem do discurso é **mantida**
- Nenhuma informação é adicionada
- Nenhuma informação é omitida
- Nenhuma ideia é fundida, separada ou reorganizada
- A rastreabilidade até a Nota Bruta é **total**

Qualquer violação invalida a Nota Base e **todos os artefatos descendentes**.

---

## 5. Proibições explícitas

É **expressamente proibido** na Nota Base:

- Interpretar o conteúdo
- Resumir ideias
- Reorganizar parágrafos
- Tornar o texto mais “didático”
- Melhorar estilo ou fluidez conceitual
- Inserir conectivos explicativos
- Eliminar repetições intencionais do discurso original

A Nota Base **não melhora o texto** — apenas o **limpa tecnicamente**.

---

## 6. Status canônico

A Nota Base é:

- O **primeiro arquivo Markdown** da pipeline TRC
- A **fonte textual limpa** para todas as etapas posteriores
- Um artefato **canônico e auditável**
- Um contrato rígido de fidelidade textual

Qualquer etapa posterior da pipeline que dependa da Nota Base **assume implicitamente** que este contrato foi respeitado sem exceções.
