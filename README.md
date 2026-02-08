# TRC — Arquitetura Canônica da Pipeline

Este repositório define exclusivamente a arquitetura canônica da pipeline TRC.

Todo o conteúdo aqui é normativo, auditável por design e deve ser tratado como fonte de verdade imutável para qualquer execução válida da pipeline.

Nenhuma definição neste repositório é ilustrativa, sugestiva ou interpretativa.

---

## 1. Visão geral da pipeline TRC

A pipeline TRC é uma sequência determinística e invariável de execução, cujo objetivo é orquestrar etapas técnicas de forma estritamente controlada.

A pipeline:
- não interpreta conteúdo;
- não resume conteúdo;
- não transforma conteúdo;
- não cria conteúdo textual.

Ela apenas coordena a execução mecânica de etapas previamente definidas, respeitando contratos rígidos de entrada e saída.

---

## 2. Marco Zero — orquestrador único

O **Marco Zero** é o único ponto de orquestração válido da pipeline TRC.

Compete exclusivamente ao Marco Zero:
- iniciar a execução da pipeline;
- garantir a ordem estrita e imutável das etapas;
- validar contratos de entrada e saída;
- coordenar a execução sem qualquer interpretação semântica.

Nenhum outro script, processo ou automação pode assumir função de orquestração da pipeline.

---

## 3. Sequência fixa da pipeline

A sequência da pipeline é fixa, canônica e inviolável.

A ordem é obrigatória e não pode ser alterada:

1. Marco Zero  
2. trc-nota-bruta  
3. trc-nota-base  
4. trc-blocos  
5. trc-leitura-pre  
6. trc-leitura-pos  
7. trc-monta-nota-filha  

Qualquer execução fora desta ordem **não constitui execução válida da pipeline TRC**.

---

## 4. Contratos de entrada e saída

Cada etapa da pipeline opera exclusivamente dentro do seu contrato técnico.

Regras:
- uma etapa não aceita dados fora do contrato;
- uma etapa não produz dados fora do contrato;
- uma etapa não conhece o funcionamento interno das demais;
- a comunicação ocorre apenas por artefatos definidos.

---

## 5. Princípios invariáveis

Os princípios abaixo são obrigatórios e não negociáveis:

- **Determinismo** — mesmas entradas produzem mesmas saídas.
- **Orquestração única** — somente o Marco Zero coordena a pipeline.
- **Imutabilidade** — saídas não são reprocessadas retroativamente.
- **Auditabilidade** — toda execução válida é rastreável.
- **Não-interpretação** — nenhuma etapa interpreta ou cria conteúdo.

---

## 6. Execução canônica vs. execução isolada

A execução da pipeline TRC só é válida quando iniciada pelo Marco Zero.

É permitido executar scripts individualmente **apenas** para:
- teste técnico;
- auditoria;
- inspeção de contrato;
- verificação mecânica.

Execuções isoladas:
- não constituem execução da pipeline;
- não produzem artefatos canônicos;
- não substituem o Marco Zero.

---

## 7. Proibições explícitas

É proibido:
- interpretar ou transformar conteúdo textual;
- alterar a sequência da pipeline;
- introduzir múltiplos orquestradores;
- tratar execução isolada como canônica;
- expandir escopo de scripts;
- inferir comportamentos não definidos aqui.

---

## 8. Auditabilidade por design

Este repositório é auditável por design.

Tudo o que está aqui:
- deve ser aplicado literalmente;
- não admite interpretação;
- não admite adaptação silenciosa.

Qualquer desvio é considerado **não conforme**, ainda que funcione tecnicamente.

---

## 9. Política de branches

Este repositório adota a seguinte política:

- `main`  
  Branch canônica e protegida.  
  Contém apenas estados consolidados, revisados e publicáveis da arquitetura TRC.

- `work`  
  Branch de trabalho ativo.  
  Todo desenvolvimento, ajuste ou extensão **DEVE** ocorrer aqui.

É proibido:
- trabalhar diretamente em `main`;
- tratar `work` como fonte canônica;
- introduzir outros branches sem justificativa arquitetural explícita.
