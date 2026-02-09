# Contrato Canônico — Blocos Técnicos (TRC)

## 1. Finalidade

Os **Blocos Técnicos** são unidades intermediárias **puramente mecânicas**, criadas a partir da Nota Base com o único objetivo de viabilizar processamento posterior em etapas controladas.

Eles **não representam parágrafos**, **não expressam sentido completo** e **não possuem valor semântico isolado**.

São um **meio técnico**, nunca um fim.

---

## 2. Origem

- Entrada obrigatória: **Nota Base**
- A Nota Base é segmentada **exclusivamente por contagem objetiva de palavras**
- Nenhuma análise linguística, semântica ou estrutural é permitida

---

## 3. Critério de segmentação

- Cada bloco contém **X palavras**, onde X é um valor **fixo e configurável**
- O algoritmo de segmentação:
  - percorre a Nota Base linearmente
  - conta palavras
  - corta exatamente no limite definido
- Não há exceções por:
  - pontuação
  - frases incompletas
  - mudança de assunto
  - marcas discursivas

---

## 4. Regras invariáveis

É expressamente proibido aos Blocos Técnicos:

- interpretar conteúdo
- reorganizar frases
- unir ideias
- separar por sentido
- eliminar repetições
- corrigir erros
- inferir estrutura textual

Blocos Técnicos **não melhoram texto**.

---

## 5. Sobra técnica

- Caso o último bloco não atinja X palavras:
  - ele **é mantido integralmente**
  - não é descartado
  - não é fundido retroativamente
- Essa sobra será tratada **apenas nas etapas posteriores**

---

## 6. Persistência e rastreabilidade

- Cada bloco deve:
  - preservar a ordem original
  - ser numerado sequencialmente
  - permitir reconstrução integral da Nota Base
- A concatenação dos blocos, na ordem correta, deve reproduzir **exatamente** a Nota Base

---

## 7. Papel na pipeline

Blocos Técnicos existem **exclusivamente** para:

- permitir processamento em pares
- viabilizar formação de parágrafos coesos **em outra etapa**
- reduzir limites técnicos de processamento

Eles **não são entregáveis finais** e **não devem ser expostos como leitura**.

---

## 8. Violação de contrato

Qualquer bloco que:

- altere o texto original
- reorganize frases
- introduza lógica discursiva
- elimine conteúdo

é considerado **NÃO CONFORME**, mesmo que produza um resultado aparentemente melhor.

---

## 9. Status canônico

Este contrato é **normativo**.

Qualquer implementação que o viole deve ser rejeitada, removida ou reescrita.
