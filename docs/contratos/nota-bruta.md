# Contrato Canônico — Nota Bruta (TRC)

## 1. Identidade

nome: Nota Bruta
estágio: primeiro artefato textual da pipeline TRC
natureza: registro bruto auditável

## 2. Função

preservar 100% do conteúdo falado
manter correspondência temporal (timestamps)
permitir auditoria humana ou automatizada

## 3. Origem dos dados

entrada: URL do YouTube
processo anterior: Marco Zero
dependência implícita: áudio convertido em WAV 16 kHz mono PCM

## 4. Formato do arquivo

extensão: .txt
encoding: UTF-8
estrutura: texto contínuo com timestamps

## 5. Naming (obrigatório)

TRC###-ANO - YT - Canal - Titulo.txt

Regras:
este nome nasce aqui
nenhum script posterior pode renomear
o basename é herdado por toda a pipeline

## 6. Conteúdo permitido

texto transcrito
timestamps
erros de fala
repetições
hesitações

## 7. Conteúdo proibido

correções gramaticais
remoção de palavras
reformulação de frases
interpretação
comentários
marcação semântica

## 8. Regras de imutabilidade

após gerada, a Nota Bruta não pode ser alterada
qualquer ajuste exige nova execução da pipeline
edição manual invalida o artefato

## 9. Papel na pipeline

é a âncora de rastreabilidade
todas as outras etapas devem ser verificáveis contra ela
se houver divergência, a Nota Bruta vence

## 10. Consequências de violação

pipeline considerada não conforme
artefatos derivados perdem validade
auditoria deve falhar
