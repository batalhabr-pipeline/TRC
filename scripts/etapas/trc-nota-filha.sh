#!/usr/bin/env bash
# =============================================================================
# TRC · NOTA FILHA
# -----------------------------------------------------------------------------
# Versão........: 1.0.0 (canônica inicial)
# Última atualização: 2026-02-XX
#
# Função:
#   Montar a Nota Filha (.md) a partir das camadas anteriores da pipeline,
#   organizando o conteúdo em estrutura legível, navegável e auditável,
#   SEM criar, alterar, interpretar ou melhorar qualquer texto.
#
# Papel na pipeline:
#   - Produto final da pipeline TRC
#   - Artefato destinado à leitura humana e uso no Obsidian
#
# Princípio fundamental:
#   A Nota Filha NÃO contém conteúdo novo.
#   Todo o texto nela presente já existia integralmente em etapas anteriores.
#
# Entradas (fontes exclusivas):
#   - Leitura Pós (texto reorganizado e suavizado, 1:1)
#   - Leitura Pré (texto reorganizado mecanicamente, 1:1)
#
# Regras canônicas (INVIOLÁVEIS):
#   - Não resumir
#   - Não corrigir
#   - Não interpretar
#   - Não acrescentar
#   - Não omitir
#   - Não reescrever
#   - Preservar correspondência textual absoluta
#
# Estrutura da Nota Filha:
#   - Cabeçalho com metadados do TRC
#   - Índice navegável
#   - Corpo principal baseado na Leitura Pós
#   - Seções colapsáveis contendo a Leitura Pré correspondente
#
# Observações:
#   - A Leitura Pós é apresentada como texto principal
#   - A Leitura Pré é mantida como camada de auditoria
#   - Nenhuma decisão semântica é tomada neste script
#
# Resultado:
#   - Um único arquivo .md
#   - Estruturado, auditável e rastreável
#   - Pronto para uso direto no Obsidian
# =============================================================================


