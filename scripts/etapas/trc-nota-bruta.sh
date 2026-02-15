#!/usr/bin/env bash
# =============================================================================
# TRC · NOTA BRUTA
# -----------------------------------------------------------------------------
# Versão........: 1.2.0 (CANÔNICA · BLINDADA)
# Script........: trc-nota-bruta.sh
# Localização...: scripts/etapas/
#
# STATUS:
#   - Script fundacional de conteúdo da pipeline TRC
#   - Ponto de nascimento do artefato nomeado
#   - ESTE CABEÇALHO É IMUTÁVEL
#
# =============================================================================
# PAPEL CANÔNICO
# -----------------------------------------------------------------------------
# A NOTA BRUTA é a PRIMEIRA materialização textual da pipeline TRC.
#
# É neste script que:
#   - nasce o identificador TRC (TRC###-ANO)
#   - nasce o nome definitivo do artefato
#   - nasce a trilha de auditoria absoluta
#
# Nenhuma etapa posterior pode:
#   - renomear
#   - corrigir
#   - reinterpretar
#   - reestruturar
#   o conteúdo produzido aqui.
#
# =============================================================================
#
# FUNÇÕES (RESPONSABILIDADES EXCLUSIVAS)
# -----------------------------------------------------------------------------
# 1. Receber do Marco Zero:
#      - VIDEO_ID do YouTube
#      - Caminho absoluto do áudio WAV (16kHz mono PCM)
#
# 2. Definir o identificador sequencial anual:
#      - Formato: TRC###-ANO
#      - Incremental, determinístico
#
# 3. Resolver metadados do YouTube:
#      - Canal
#      - Título
#
# 4. Gerar o nome definitivo do artefato:
#      - Formato:
#        TRC###-ANO-YT-Canal-Titulo.txt
#
# 5. Executar transcrição mecânica do áudio:
#      - Ferramenta: whisper.cpp (ou equivalente local)
#      - Idioma explícito
#      - COM timestamps
#
# 6. Gerar a NOTA BRUTA:
#      - Arquivo .txt
#      - Com timestamps
#      - Fora do Obsidian
#
# =============================================================================
#
# O QUE ESTE SCRIPT NÃO FAZ (PROIBIÇÕES ABSOLUTAS)
# -----------------------------------------------------------------------------
# ❌ NÃO resume
# ❌ NÃO corrige texto
# ❌ NÃO interpreta
# ❌ NÃO reorganiza frases
# ❌ NÃO remove repetições
# ❌ NÃO altera vocabulário
# ❌ NÃO escreve em markdown
#
# A transcrição deve refletir EXATAMENTE o áudio.
#
# =============================================================================
#
# ENTRADA
# -----------------------------------------------------------------------------
# - 2 argumentos obrigatórios:
#
#   1) <VIDEO_ID>
#   2) <CAMINHO_AUDIO_WAV>
#
# =============================================================================
#
# SAÍDA (CONTRATO FIXO)
# -----------------------------------------------------------------------------
# - Arquivo NOTA BRUTA (.txt)
#
# Características obrigatórias:
#   - Texto completo
#   - Ordem absoluta preservada
#   - Timestamps explícitos
#   - Nenhuma perda de informação
#
# Localização:
#   - Fora do Obsidian
#   - Diretório de cache/entrada técnica
#
# =============================================================================
#
# DETERMINISMO E AUDITORIA
# -----------------------------------------------------------------------------
# - Execução determinística
# - Nenhuma decisão semântica
# - Nenhuma lógica dependente de conteúdo textual
# - Falhas abortam imediatamente
#
# A NOTA BRUTA é o artefato de auditoria máxima.
#
# =============================================================================
#
# RELAÇÃO COM A PIPELINE
# -----------------------------------------------------------------------------
# Ordem canônica:
#
#   1. trc-marco-zero.sh
#   2. trc-nota-bruta.sh      (este script)
#   3. trc-nota-base.sh
#   4. trc-blocos.sh
#   5. trc-leitura-pre.sh
#   6. trc-leitura-pos.sh
#   7. trc-nota-filha.sh
#
# Este script:
#   - RECEBE do Marco Zero
#   - ENTREGA para a Nota Base
#
# =============================================================================
#
# CONTRATOS RELACIONADOS
# -----------------------------------------------------------------------------
# docs/contratos/nota-bruta.md
# docs/contratos/pipeline-trc.md
#
# Estes documentos são normativos.
# O código deve obedecer aos contratos.
#
# =============================================================================
#
# PRINCÍPIO FINAL
# -----------------------------------------------------------------------------
# Se a NOTA BRUTA estiver errada,
# todo o restante é irrelevante.
#
# Este script existe para impedir isso.
# ===================================================================================
