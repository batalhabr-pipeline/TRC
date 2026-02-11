# Contrato Canônico — Pipeline TRC

## 1. Status do Documento
- Tipo: Contrato Técnico Canônico
- Escopo: Pipeline TRC
- Autoridade: Repositório TRC
- Mutabilidade: PROIBIDA sem versionamento explícito
- Versão: 1.0.0

---

1. Propósito
2. Princípios Imutáveis
3. Fluxo Geral da Pipeline
4. Etapas Canônicas (uma por uma)
5. Convenção de Nomenclatura de Arquivos
6. Regras de Evolução da Pipeline



## 1. Propósito do Contrato
Este documento define regras **imutáveis** de nomenclatura, fluxo, responsabilidades e garantias da pipeline TRC.

Qualquer execução, automação, agente (humano ou IA) deve obedecer integralmente a este contrato.

---

## 2. Princípios Imutáveis
- Nenhum script interpreta conteúdo
- Nenhum script cria informação nova
- Toda etapa é auditável
- A Nota Bruta é a âncora da verdade

---

## 3. Fluxo Geral da Pipeline

A pipeline TRC é composta por uma sequência fixa, linear e auditável de etapas.

Cada etapa:
- possui responsabilidade única;
consome exclusivamente os artefatos definidos em seu próprio contrato;
- por padrão, recebe como entrada a etapa imediatamente anterior;
- exceções de múltiplas entradas devem estar explicitamente declaradas na definição da etapa;
- produz artefatos imutáveis;
- não interpreta, resume ou cria conteúdo novo.

A ordem das etapas é **canônica e imutável**.

---

## 4. Etapas Canônicas da Pipeline

### Etapa 0 — Marco Zero (orquestração)

**Responsabilidade**
- Orquestrar a execução da pipeline.
- Validar dependências técnicas.
- Garantir o cumprimento da ordem canônica.

**Entradas**
- URL de um vídeo do YouTube.

**Saídas**
- Áudio original do vídeo.
- Áudio convertido para WAV 16 kHz, mono, PCM linear.

**Restrições**
- Não transforma conteúdo textual.
- Não interpreta áudio.
- Não altera contratos ou decisões de etapas posteriores.

### Etapa 1 — Nota Bruta

**Responsabilidade**
- Registrar integralmente o conteúdo falado do vídeo.
- Preservar rastreabilidade temporal.

**Entradas**
- Áudio WAV normalizado.

**Saídas**
- Arquivo de texto contendo:
  - transcrição integral;
  - marcações temporais (timestamps).

**Restrições**
- Proibido corrigir, interpretar ou resumir o conteúdo.
- O texto deve refletir fielmente o áudio.

### Etapa 2 — Nota Base

**Responsabilidade**
- Produzir a primeira versão textual limpa.
- Remover apenas elementos técnicos não textuais.

**Entradas**
- Nota Bruta.

**Saídas**
- Documento Markdown contendo o texto integral, sem timestamps.

**Restrições**
- Nenhuma interpretação semântica é permitida.
- Nenhum conteúdo pode ser acrescentado ou removido.

### Etapa 3 — Blocos Técnicos

**Responsabilidade**
- Fragmentar o texto em blocos técnicos de tamanho controlado.
- Viabilizar processamento posterior.

**Entradas**
- Nota Base.

**Saídas**
- Conjunto de blocos textuais numerados.

**Restrições**
- Blocos são meios técnicos, não produtos finais.
- Nenhum bloco pode alterar o conteúdo original.

### Etapa 4 — Leitura Pré

**Responsabilidade**
- Reorganizar blocos técnicos em parágrafos coesos.
- Preservar correspondência 1:1 com o conteúdo original.

**Entradas**
- Pares de blocos técnicos.

**Saídas**
- Texto reorganizado em parágrafos, semanticamente fiéis.

**Restrições**
- Proibido interpretar ou explicar o conteúdo.

### Etapa 5 — Leitura Pós

**Responsabilidade**
- Suavizar a leitura do texto.
- Corrigir apenas fluidez superficial.

**Entradas**
- Leitura Pré.

**Saídas**
- Texto final com melhor fluidez, sem alteração de sentido.

**Restrições**
- Fidelidade semântica total é obrigatória.
- Nenhuma ideia nova pode ser introduzida.

### Etapa 6 — Nota Filha

**Responsabilidade**
- Consolidar o conteúdo em formato final de leitura.
- Organizar o texto com índice e estrutura navegável.

**Entradas**
- Leitura Pré e Leitura Pós.

**Justificativa arquitetural**

A Nota Filha consome tanto a Leitura Pós quanto a Leitura Pré
para preservar auditabilidade 1:1 entre evidência técnica (Pré)
e versão legível final (Pós).

Essa dupla entrada é uma exceção formalmente permitida
conforme regra geral da Seção 3.

**Saídas**
- Documento Markdown final, contendo:
  - índice;
  - leitura pós como corpo principal;
  - leitura pré preservada como evidência.

**Restrições**
- Apenas reorganização e apresentação.
- Nenhum conteúdo novo é permitido.

---

## 5. Convenções de Nomenclatura de Arquivos

### 5.1. Padrão Geral

TRC###-ANO - YT - Canal - Titulo.ext

### 5.1.1. Regras
- `TRC###` é definido **uma única vez** na Nota Bruta
- `ANO` refere-se ao ano de publicação do vídeo
- `YT` identifica a plataforma (YouTube)
- `Canal` é o nome canônico do canal
- `Titulo` é o título original normalizado
- Scripts subsequentes **NUNCA renomeiam arquivos**

---

## 6. Violação de Contrato
Qualquer script, agente ou modificação que viole este contrato é considerada **defeito crítico de arquitetura**.
