# TRC — Arquitetura Canônica da Pipeline

> **Status:** Constituição TRC v1.0  
> **Estado:** Congelada  
> **Escopo:** Arquitetura canônica da pipeline TRC  
> **Alterações futuras:** Somente via revisão constitucional explícita

Este repositório define **exclusivamente** a arquitetura canônica da pipeline TRC.

Todo o conteúdo aqui é **normativo**, **auditável por design** e deve ser tratado como **fonte de verdade imutável** para qualquer execução válida da pipeline TRC.

Nenhuma definição neste repositório é ilustrativa, sugestiva ou interpretativa.

---

## 1. Visão geral da pipeline TRC

A pipeline TRC é uma sequência **determinística, fechada e invariável** de execução.

Seu objetivo é **orquestrar etapas técnicas mecânicas**, de forma estritamente controlada, garantindo **rastreabilidade total** do conteúdo ao longo de todo o fluxo.

A pipeline TRC:

- **não interpreta conteúdo**;
- **não resume conteúdo**;
- **não transforma conteúdo**;
- **não cria conteúdo textual**.

Ela apenas **coordena a execução mecânica** de etapas previamente definidas, respeitando **contratos rígidos de entrada e saída**.

---

## 2. Marco Zero — orquestrador único e obrigatório

O **Marco Zero** é o **único ponto de entrada e orquestração válido** da pipeline TRC.

Compete **exclusivamente** ao Marco Zero:

- iniciar a execução da pipeline;
- garantir a **ordem estrita, completa e imutável** das etapas;
- validar dependências técnicas;
- validar contratos de entrada e saída;
- coordenar a execução **sem qualquer interpretação semântica**;
- chamar **todas as etapas da pipeline**, do início ao fim.

Nenhum outro script, processo ou automação pode assumir, total ou parcialmente, função de orquestração.

---

## 3. Sequência fixa e canônica da pipeline

A sequência da pipeline TRC é **fixa, canônica e inviolável**.

A ordem abaixo é **obrigatória** e **não pode ser alterada**:

1. **Marco Zero** (`trc-marco-zero.sh`)
2. **trc-nota-bruta**
3. **trc-nota-base**
4. **trc-blocos**
5. **trc-leitura-pre**
6. **trc-leitura-pos**
7. **trc-nota-filha**

Qualquer execução fora desta ordem **não constitui execução válida** da pipeline TRC.

---

## 4. Contratos de entrada e saída

Cada etapa da pipeline opera **exclusivamente dentro do seu contrato técnico**.

Regras obrigatórias:

- uma etapa **não aceita dados fora do contrato**;
- uma etapa **não produz dados fora do contrato**;
- uma etapa **não conhece o funcionamento interno** das demais;
- a comunicação ocorre **apenas por artefatos definidos**;
- nenhuma etapa interpreta, infere ou complementa conteúdo textual.

---

## 5. Princípios invariáveis da arquitetura TRC

Os princípios abaixo são **obrigatórios e não negociáveis**:

- **Determinismo** — mesmas entradas produzem as mesmas saídas;
- **Orquestração única** — somente o Marco Zero coordena a pipeline;
- **Imutabilidade** — saídas não são reprocessadas retroativamente;
- **Auditabilidade** — toda execução válida é rastreável;
- **Não-interpretação** — nenhuma etapa cria, resume ou interpreta conteúdo.

---

## 6. Execução canônica vs. execução isolada

A execução da pipeline TRC **só é válida** quando iniciada pelo **Marco Zero**.

É permitido executar scripts individualmente **apenas** para:

- teste técnico;
- auditoria mecânica;
- inspeção de contrato;
- verificação de integridade.

Execuções isoladas:

- **não constituem execução da pipeline**;
- **não produzem artefatos canônicos**;
- **não substituem o Marco Zero**;
- **não têm valor arquitetural**.

---

## 7. Proibições explícitas

É **expressamente proibido**:

- interpretar ou transformar conteúdo textual;
- alterar a sequência da pipeline;
- introduzir múltiplos orquestradores;
- tratar execução isolada como canônica;
- expandir o escopo de scripts;
- inferir comportamentos não definidos neste repositório;
- adaptar silenciosamente contratos ou responsabilidades.

---

## 8. Auditabilidade por design

Este repositório é **auditável por design**.

Tudo o que está aqui:

- deve ser aplicado **literalmente**;
- **não admite interpretação**;
- **não admite adaptação silenciosa**;
- **não admite flexibilização implícita**.

Qualquer desvio é considerado **não conforme**, ainda que funcione tecnicamente.

---

## 9. Política de branches

Este repositório adota a seguinte política de branches:

### `main`
- Branch **canônica e protegida**.
- Contém apenas estados **consolidados, revisados e publicáveis** da arquitetura TRC.
- Não recebe commits diretos de desenvolvimento.

### `work`
- Branch de **trabalho ativo**.
- Todo desenvolvimento, ajuste ou extensão **DEVE ocorrer aqui**.

É proibido:

- trabalhar diretamente em `main`;
- tratar `work` como fonte canônica;
- introduzir outros branches sem justificativa arquitetural explícita.
