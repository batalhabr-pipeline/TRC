# ADR 0001 — Estrutura Inicial do Projeto

## Status
Aceito

## Contexto

Era necessário definir uma base arquitetural simples,
robusta e governável para o TRC.

## Decisão

- Usar Bash puro
- Criar orquestrador central
- Modularizar etapas em scripts separados
- Implementar logging por execução
- Documentação versionada em docs/

## Consequências

Positivas:
- Simplicidade operacional
- Alta previsibilidade
- Baixa dependência externa

Negativas:
- Escalabilidade limitada comparada a linguagens mais robustas
- Menor abstração

## Data
151644Z/FEV2026
