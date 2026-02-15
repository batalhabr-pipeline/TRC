# TRC — Documento Canônico de Arquitetura (DCA)

## 1. Propósito do Projeto

TRC é um pipeline modular em Bash para processamento estruturado de textos,
com foco em reprodutibilidade, rastreabilidade e governança leve.

Objetivo: transformar entrada bruta em artefatos organizados por etapas bem definidas.

---

## 2. Princípios Arquiteturais

1. Simplicidade operacional (Bash puro, sem dependências externas complexas)
2. Pipeline orquestrado por script central
3. Scripts atômicos (uma responsabilidade por etapa)
4. Logs versionados por execução
5. Falha explícita (set -euo pipefail)
6. Estrutura previsível de diretórios
7. Documentação como fonte de verdade

---

## 3. Estrutura Oficial de Diretórios

TRC/ ├── trc-marco-zero.sh ├── scripts/ ├── input/ ├── output/ ├── logs/ └── docs/

---

## 4. Fluxo do Pipeline (Macro)

Entrada → nota-bruta → (etapas futuras) → saída estruturada

Orquestrador:
trc-marco-zero.sh

Cada etapa:
- recebe INPUT
- gera OUTPUT
- registra erro se falhar

---

## 5. Convenções de Scripts

- Sempre iniciar com:
  set -euo pipefail
- Não usar variáveis globais implícitas
- Validar argumentos
- Não silenciar erros
- Sempre gerar saída determinística

---

## 6. Versionamento

- main = estado estável
- work = desenvolvimento ativo
- Toda mudança relevante deve atualizar PROJECT_STATE.md

---

## 7. Governança

Decisões arquiteturais relevantes devem gerar um ADR em:
docs/adr/

Formato: numerado sequencialmente.

---

## 8. Roadmap Atual

Fase 2 — Fortalecimento dos Scripts com Governança

Próxima meta:
Tornar nota-bruta.sh inteligente e validado.
