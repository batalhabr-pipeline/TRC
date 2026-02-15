# Contrato Canônico — Nota Filha (TRC)

- Versão: 1.0.0
- Compatível com: Pipeline TRC 1.0.0

## Subordinação Normativa

Este contrato é subordinado ao "Contrato Canôni>

Em caso de conflito normativo, prevalece o cont>

## 1. Finalidade da Nota Filha

A Nota Filha é o artefato final de leitura e estudo da pipeline TRC.

Sua função é organizar, apresentar e tornar navegável o conteúdo textual já tratado pelas etapas anteriores, sem criar, interpretar, resumir ou alterar conteúdo.

A Nota Filha:
- não produz texto novo;
- não altera sentido, ênfase ou estrutura lógica;
- apenas reorganiza e expõe, de forma auditável, textos já existentes.

Ela é construída exclusivamente a partir de:
- Leitura Pós (texto principal);
- Leitura Pré (texto correspondente, preservado para referência técnica).

---

## 2. Princípios Invioláveis

A montagem da Nota Filha deve obedecer obrigatoriamente aos seguintes princípios:

1. Fidelidade total  
   Nenhuma palavra é criada, removida ou reinterpretada.  
   Todo o conteúdo já existe em etapas anteriores da pipeline.

2. Correspondência 1:1  
   Cada parágrafo da Leitura Pós possui exatamente um parágrafo correspondente da Leitura Pré.  
   Não é permitido mesclar, dividir ou recombinar parágrafos.

3. Separação de camadas  
   A Leitura Pós é o texto principal.  
   A Leitura Pré é apresentada apenas como referência técnica colapsável.  
   As duas camadas nunca se misturam no mesmo bloco textual.

4. Auditabilidade estrutural  
   A relação entre Leitura Pós e Leitura Pré deve ser visualmente verificável.  
   A estrutura deve permitir inspeção humana e automatizada.

---

## 3. Estrutura Obrigatória da Nota Filha

A Nota Filha deve conter, nesta ordem fixa e obrigatória:

### 3.1 Cabeçalho

O cabeçalho deve incluir:
- Título da nota;
- Metadados, quando aplicável, conforme padrão do repositório.

O cabeçalho não contém conteúdo textual da transcrição.

---

### 3.2 Índice

O índice deve ser gerado a partir dos títulos dos parágrafos da Leitura Pós.

Cada item do índice:
- corresponde a um único parágrafo da Leitura Pós;
- aponta para uma âncora interna;
- respeita rigorosamente a ordem sequencial do texto.

---

### 3.3 Corpo da Nota — Blocos Pareados

O corpo da Nota Filha é composto por blocos pareados repetidos sequencialmente.

Cada bloco pareado contém obrigatoriamente:

1. Título do Parágrafo  

O título é gerado a partir do conteúdo da Leitura Pós.

O título deve ser:
- descritivo do conteúdo;
- semanticamente fiel ao parágrafo;
- específico, evitando abstrações genéricas.

O título:
- compõe o índice;
- define a âncora interna;
- não pode introduzir conceitos ausentes no texto.

Não é permitido:
- título criativo;
- título interpretativo;
- título editorial.

---

2. Parágrafo da Leitura Pós  

- Texto principal do bloco.
- Apresentado em parágrafo contínuo.
- Exatamente igual ao texto produzido na etapa de Leitura Pós.
- Nenhuma modificação é permitida.

---

3. Parágrafo Correspondente da Leitura Pré (Colapsável)  

- Deve aparecer imediatamente após o parágrafo da Leitura Pós.
- Deve estar contido em bloco colapsável usando `<details>`.
- Contém exclusivamente o parágrafo correspondente da Leitura Pré.
- O texto deve ser preservado integralmente.

Estrutura obrigatória do bloco colapsável:

- O `<summary>` deve conter texto neutro indicando tratar-se da Leitura Pré.
- Nenhuma informação adicional pode ser inserida no bloco.

---

## 4. Regras de Montagem

1. A ordem dos blocos deve respeitar rigorosamente a ordem da Leitura Pós.
2. Cada título corresponde a exatamente um parágrafo da Leitura Pós.
3. Não é permitido agrupar múltiplos parágrafos sob um único título.
4. Não é permitido omitir a Leitura Pré de qualquer parágrafo.
5. Não é permitido inserir comentários, explicações ou notas editoriais.
6. Não é permitido reutilizar títulos.

---

## 5. O que a Nota Filha NÃO é

A Nota Filha:
- não é resumo;
- não é interpretação;
- não é curadoria temática;
- não é síntese;
- não é comentário teológico, acadêmico ou editorial.

Ela é um artefato estrutural de apresentação, não de transformação.

---

## 6. Resultado Esperado

Ao final da montagem:
- o leitor humano pode ler fluentemente a Leitura Pós;
- a Leitura Pré correspondente está sempre disponível, mas não intrusiva;
- a rastreabilidade entre as etapas da pipeline é preservada;
- um agente automatizado consegue validar:
  - correspondência 1:1;
  - ordem;
  - integridade estrutural.

---

## 7. Status do Contrato

Este contrato é normativo, canônico e imutável sem revisão explícita da arquitetura TRC.

Qualquer script, agente ou automação que produza Nota Filha deve obedecer integralmente a este contrato.
