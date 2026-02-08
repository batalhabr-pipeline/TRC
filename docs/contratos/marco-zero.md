TRC — Contrato do Marco Zero

1. Finalidade
O Marco Zero é o único ponto de entrada da pipeline TRC.
Sua função é orquestrar a execução da pipeline, garantindo que todas as etapas subsequentes operem sob contratos técnicos claros, auditáveis e imutáveis.
O Marco Zero não processa conteúdo.
Ele coordena, valida pré-condições e impõe ordem.

2. Identidade Canônica
Nome do script: trc-marco-zero.sh
Localização obrigatória: scripts/marco-zero/
Papel arquitetural: orquestrador único da pipeline TRC
Nenhum outro script pode assumir funções equivalentes.

3. Responsabilidades
O Marco Zero DEVE:
Ser o único ponto de entrada da pipeline
Receber uma URL válida do YouTube como argumento obrigatório
Validar dependências externas antes de qualquer execução
Baixar o áudio da fonte original
Converter o áudio para o formato canônico da pipeline
Executar os scripts subsequentes na ordem canônica
Abortar a pipeline em caso de qualquer erro

4. Proibições Explícitas
O Marco Zero NÃO PODE, sob nenhuma circunstância:
Interpretar conteúdo textual
Resumir, reescrever ou corrigir texto
Remover ou alterar timestamps
Renomear arquivos fora do contrato
Alterar a ordem da pipeline
Executar parcialmente a pipeline após falha
Incorporar lógica pertencente a etapas posteriores
Qualquer violação invalida a execução como não canônica.

5. Entrada
5.1 Argumento obrigatório
Uma URL válida do YouTube
A ausência ou invalidez da URL DEVE resultar em falha imediata, sem efeitos colaterais.

6. Dependências Obrigatórias
Antes de qualquer processamento, o Marco Zero DEVE verificar a presença das seguintes ferramentas:
yt-dlp
ffmpeg
A ausência de qualquer dependência DEVE causar aborto imediato da pipeline.

7. Aquisição e Normalização de Áudio
7.1 Download do áudio
O Marco Zero DEVE baixar o áudio da fonte utilizando yt-dlp, preservando o formato original retornado pela ferramenta.
7.2 Conversão para formato canônico
O áudio DEVE ser convertido para:
Formato: WAV
Frequência: 16 kHz
Canais: mono
Codificação: PCM linear (pcm_s16le)
Este é o contrato técnico fixo da pipeline.
Nenhuma etapa posterior pode receber áudio em formato diferente.

8. Ordem Canônica de Execução
O Marco Zero DEVE executar, estritamente nesta ordem, os seguintes scripts:
trc-nota-bruta.sh
trc-nota-base.sh
trc-blocos.sh
trc-leitura-pre.sh
trc-leitura-pos.sh
trc-monta-nota-filha.sh
O Marco Zero NÃO PODE:
Pular etapas
Reordenar chamadas
Executar etapas condicionalmente

9. Política de Falha
Qualquer erro em qualquer etapa DEVE causar aborto imediato da pipeline
Não é permitido continuar a execução após falha
Não é permitido gerar outputs parciais silenciosos
O código de saída das etapas DEVE ser respeitado
Falhar cedo é preferível a corromper a rastreabilidade da pipeline.

10. Escopo Arquitetural
O Marco Zero é responsável apenas por:
Orquestração
Validação de pré-condições
Garantia de contratos técnicos
Ele NÃO é responsável por:
Conteúdo textual
Qualidade semântica
Interpretação humana ou automatizada

11. Imutabilidade do Contrato
Este contrato é normativo.
Qualquer alteração:
DEVE ser explícita
DEVE ser versionada
DEVE ser tratada como mudança arquitetural da pipeline


Estado do Contrato
Status: FECHADO
Escopo: Canônico
Natureza: Normativo
Violação: Execução inválida da pipeline
