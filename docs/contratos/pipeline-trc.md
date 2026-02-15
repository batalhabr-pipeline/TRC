# Contrato Canônico — Pipeline TRC

## Subordinação Normativa

Este contrato é subordinado ao "Contrato Canônico — Pipeline TRC".

Em caso de conflito normativo, prevalece o contrato canônico da pipeline.

## 1. Status do Documento

- **Tipo:** Contrato Técnico Canônico  
- **Escopo:** Pipeline TRC  
- **Autoridade:** Repositório TRC  
- **Mutabilidade:** PROIBIDA sem versionamento explícito  
- **Versão:** 1.0.0  

---

## 2. Propósito do Contrato

Este documento define regras imutáveis de nomenclatura, fluxo, responsabilidades e garantias da pipeline TRC.

Qualquer execução, automação, agente (humano ou IA) deve obedecer integralmente a este contrato.

---

## 3. Princípios Imutáveis

- Nenhum script interpreta conteúdo.  
- Nenhum script cria informação nova.  
- Toda etapa é auditável.  
- A Nota Bruta é a âncora da verdade.

---

## 4. Fluxo Geral da Pipeline

A pipeline TRC é composta por uma sequência fixa, linear e auditável de etapas.

Cada etapa:

- possui responsabilidade única;
- consome exclusivamente os artefatos definidos em seu próprio contrato;
- por padrão, recebe como entrada a etapa imediatamente anterior;
- exceções de múltiplas entradas devem estar explicitamente declaradas na definição da etapa;
- produz artefatos imutáveis;
- não interpreta, resume ou cria conteúdo novo.

A ordem das etapas é canônica e imutável.

---

## 5. Etapas Canônicas da Pipeline

### 5.0. Etapa 0 — Marco Zero (Orquestração)

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

---

### 5.1. Etapa 1 — Nota Bruta

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

---

### 5.2. Etapa 2 — Nota Base

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

---

### 5.3. Etapa 3 — Blocos Técnicos

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

---

### 5.4. Etapa 4 — Leitura Pré

**Responsabilidade**

- Reorganizar blocos técnicos em parágrafos coesos.
- Preservar correspondência 1:1 com o conteúdo original.

**Entradas**

- Pares de blocos técnicos.

**Saídas**

- Texto reorganizado em parágrafos, semanticamente fiéis.

**Restrições**

- Proibido interpretar ou explicar o conteúdo.

---

### 5.5. Etapa 5 — Leitura Pós

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

---

### 5.6. Etapa 6 — Nota Filha

**Responsabilidade**

- Consolidar o conteúdo em formato final de leitura.
- Organizar o texto com índice e estrutura navegável.

**Entradas**

- Leitura Pré.
- Leitura Pós.

**Justificativa Arquitetural**

A Nota Filha consome tanto a Leitura Pós quanto a Leitura Pré para preservar auditabilidade 1:1 entre evidência técnica (Pré) e versão legível final (Pós).

Essa dupla entrada é uma exceção formalmente permitida conforme regra geral da Seção 4.

**Saídas**

- Documento Markdown final, contendo:
  - índice;
  - leitura pós como corpo principal;
  - leitura pré preservada como evidência.

**Restrições**

- Apenas reorganização e apresentação.
- Nenhum conteúdo novo é permitido.

---

## 6. Convenções de Nomenclatura de Arquivos

### 6.1. Padrão Geral

TRC###-ANO - YT - Canal - Titulo.ext

### 6.2. Regras

- TRC### é definido uma única vez na Nota Bruta.
- ANO refere-se ao ano de publicação do vídeo.
- YT identifica a plataforma (YouTube).
- Canal é o nome canônico do canal.
- Título é o título original normalizado.
- Scripts subsequentes NUNCA renomeiam arquivos.

---

## 7. Violação de Contrato

Qualquer script, agente ou modificação que viole este contrato é considerada defeito crítico de arquitetura.

---

## 8. Protocolo Operacional e Governança Contratual

### 8.1. Hierarquia Normativa

Este documento possui supremacia normativa sobre todos os contratos individuais de etapas da pipeline TRC.

Em caso de conflito entre:

- o Contrato Canônico da Pipeline; e
- qualquer contrato individual de etapa,

prevalece o presente documento.

---

### 8.2. Separação entre Camada Conceitual e Camada Operacional

A pipeline TRC possui duas camadas normativas distintas:

**Camada Conceitual (este documento):**

- Define princípios imutáveis;
- Define ordem canônica;
- Define responsabilidades;
- Define garantias semânticas e ontológicas.

**Camada Operacional (contratos individuais de etapas):**

- Define entradas e saídas técnicas específicas;
- Define formatos de arquivos;
- Define comportamento mecânico do script correspondente.

Contratos individuais não podem:

- alterar princípios imutáveis;
- alterar ordem canônica;
- criar exceções não explicitamente permitidas.

---

### 8.3. Protocolo de Interface entre Etapas

Toda comunicação entre etapas deve obedecer às seguintes regras:

- Cada etapa consome exclusivamente os artefatos definidos como sua entrada contratual.
- Nenhuma etapa pode inferir ou descobrir artefatos por varredura implícita.
- Artefatos produzidos são imutáveis.
- Nenhuma etapa pode renomear artefatos definidos anteriormente.
- A ordem de execução é linear e obrigatória, salvo exceções formalmente declaradas.

---

### 8.4. Orquestração

A Etapa 0 — Marco Zero é a única entidade autorizada a:

- executar sequencialmente as etapas;
- garantir a ordem canônica;
- validar dependências técnicas.

Nenhuma etapa posterior pode:

- chamar diretamente outra etapa;
- assumir responsabilidade de orquestração.

---

### 8.5. Versionamento e Evolução

Qualquer modificação neste documento exige:

- Incremento explícito de versão;
- Revisão formal dos contratos individuais;
- Commit documentado no repositório TRC.

Modificações em contratos individuais que impactem:

- entradas;
- saídas;
- nomenclatura;
- fluxo;

exigem validação de compatibilidade com este contrato.

---

### 8.6. Auditoria e Conformidade

Todo script executável da pipeline deve ser:

- auditável;
- rastreável;
- aderente ao contrato correspondente.

Violação de qualquer cláusula desta Seção constitui defeito crítico de arquitetura.
