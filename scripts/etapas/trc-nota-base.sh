#!/usr/bin/env bash
# =============================================================================
# TRC · NOTA BASE
# -----------------------------------------------------------------------------
# Versão........: 1.0.0 (CANÔNICA · BLINDADA)
# Script........: trc-nota-base.sh
# Localização...: scripts/etapas/
#
# STATUS:
#   - Primeira camada Markdown da pipeline TRC
#   - Script mecânico de purificação estrutural
#   - ESTE CABEÇALHO É IMUTÁVEL
#
# =============================================================================
# PAPEL CANÔNICO
# -----------------------------------------------------------------------------
# A NOTA BASE é a conversão direta da NOTA BRUTA (.txt)
# para um arquivo Markdown (.md), preservando integralmente
# o conteúdo textual original.
#
# Este script:
#   - NÃO interpreta
#   - NÃO resume
#   - NÃO corrige
#   - NÃO reorganiza
#
# Ele remove APENAS os timestamps, mantendo correspondência
# textual 1:1 com a Nota Bruta.
#
# =============================================================================
#
# FUNÇÃO (RESPONSABILIDADE EXCLUSIVA)
# -----------------------------------------------------------------------------
# 1. Receber a NOTA BRUTA (.txt) como entrada
#
# 2. Remover mecanicamente:
#      - timestamps
#      - marcadores temporais
#
# 3. Preservar:
#      - texto integral
#      - ordem absoluta
#      - parágrafos implícitos
#
# 4. Gerar a NOTA BASE:
#      - Arquivo .md
#      - Mesmo basename da Nota Bruta
#
# =============================================================================
#
# O QUE ESTE SCRIPT NÃO FAZ (PROIBIÇÕES ABSOLUTAS)
# -----------------------------------------------------------------------------
# ❌ NÃO altera vocabulário
# ❌ NÃO corrige erros gramaticais
# ❌ NÃO normaliza estilo
# ❌ NÃO une ou separa parágrafos
# ❌ NÃO remove repetições
# ❌ NÃO adiciona títulos
# ❌ NÃO insere metadados YAML
#
# Markdown aqui é CONTÊINER, não interpretação.
#
# =============================================================================
#
# ENTRADA
# -----------------------------------------------------------------------------
# - 1 argumento obrigatório:
#
#   <CAMINHO_NOTA_BRUTA.txt>
#
# =============================================================================
#
# SAÍDA (CONTRATO FIXO)
# -----------------------------------------------------------------------------
# - Arquivo NOTA BASE (.md)
#
# Características obrigatórias:
#   - Conteúdo textual idêntico à Nota Bruta
#   - Sem timestamps
#   - Ordem absoluta preservada
#
# Nome:
#   - Mesmo basename da Nota Bruta
#   - Apenas extensão alterada (.txt → .md)
#
# Local:
#   - Dentro do Obsidian
#   - Diretório de entrada técnica
#
# =============================================================================
#
# DETERMINISMO E AUDITORIA
# -----------------------------------------------------------------------------
# - Execução determinística
# - Transformação puramente mecânica
# - Correspondência textual 1:1
#
# Este script garante que:
#   Markdown ≠ interpretação.
#
# =============================================================================
#
# RELAÇÃO COM A PIPELINE
# -----------------------------------------------------------------------------
# Ordem canônica:
#
#   1. trc-marco-zero.sh
#   2. trc-nota-bruta.sh
#   3. trc-nota-base.sh       (este script)
#   4. trc-blocos.sh
#   5. trc-leitura-pre.sh
#   6. trc-leitura-pos.sh
#   7. trc-nota-filha.sh
#
# Este script:
#   - RECEBE da Nota Bruta
#   - ENTREGA para Blocos Técnicos
#
# =============================================================================
#
# CONTRATOS RELACIONADOS
# -----------------------------------------------------------------------------
# docs/contratos/nota-base.md
# docs/contratos/nota-bruta.md
# docs/contratos/pipeline-trc.md
#
# Estes documentos são normativos.
#
# =============================================================================
#
# PRINCÍPIO FINAL
# -----------------------------------------------------------------------------
# Se a Nota Base divergir do texto original,
# a auditoria foi quebrada.
#
# Este script existe para impedir isso.
# ====================================================================================
