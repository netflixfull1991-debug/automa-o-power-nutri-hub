# Body Burn — mapeamento inicial do catálogo Power Nutri

Data da consulta pública: 2026-11-20  
Fonte: https://bodyburndistribuidora.com/catalogo  
Fornecedor planejado: Body Burn Distribuidora

## Objetivo

Preparar a primeira importação do catálogo Body Burn para o Power Nutri Hub, priorizando exclusivamente as dez marcas escolhidas pelo responsável pela operação. Este documento é um mapeamento inicial baseado no catálogo público; não representa importação, estoque reservado, preço de compra confirmado ou autorização para copiar imagens em canais externos.

## Escopo de marcas

| Marca no Power Nutri | Variações de nome vistas no fornecedor | Itens anunciados na página inicial |
|---|---|---:|
| Integralmedica | INTEGRAL MEDICA | 38 |
| Max Titanium | MAX TITANIUM | 25 |
| Under Labz | UNDER LABZ | 68 |
| Adaptogen | ADAPTOGEN | 64 |
| Body Action | BODY ACTION | 41 |
| Dr. Peanut | DR. PEANUT | 12 |
| DUX | DUX | 71 |
| Demons Lab | DEMONS LAB | 32 |
| Vitafor | VITAFOR | 31 |
| Herbolab | HERBOLAB | 65 |

Os totais acima somam 447 itens e são os números exibidos no bloco “Marcas ativas” da página inicial na data da consulta. A página de catálogo apresentou 580 produtos em uma captura e 587 em outra captura recente; a contagem pode variar com atualização do catálogo. Não tratar essas quantidades como total exato de produtos importáveis.

## Exemplos públicos identificados

Os exemplos abaixo confirmam presença das marcas e ajudam a validar a classificação. Não são uma lista completa.

- **Integralmedica:** barras Crisp em caixas de 12 unidades; Beef 900 g; creatina e whey em diferentes apresentações.
- **Max Titanium:** BCAA Drink 280 g; creatina 500 g; Mass Titanium 3 kg; Whey 100% em pote/refil.
- **Under Labz:** Beef Protein Crush 910 g; creatina Born to Disrupt 300 g; barras Buenissimo em caixas de 12 unidades; produtos em cápsulas.
- **Adaptogen:** Hit Protein 900 g; Gold Whey 900 g; Panic 300 g; Tasty Whey em diferentes apresentações.
- **Body Action:** Biotina 60 cápsulas; Isolate Prime Whey 900 g; Hard Mass 3 kg; colágeno.
- **Dr. Peanut:** pastas de amendoim de 600 g em sabores como avelã, banoffee, beijinho, brownie, cookies and cream e pistache; whey em pote.
- **DUX:** whey concentrado e isolado em potes de 900 g e sachês; vitaminas e multinutrientes.
- **Demons Lab:** pré-treinos Insane e Ectoplasma; termogênico em cápsulas.
- **Vitafor:** creatina 300 g; Whey Fort 3W 900 g; multivitamínicos e outros produtos em cápsulas.
- **Herbolab:** linha de encapsulados, com exemplos públicos como 3 MAG 60 caps, Astaxantina 30 caps, Malato de Magnésio 60 caps, Coenzima Q10 60 caps e Vitta D3 60 caps. A marca também pode apresentar itens em pó ou outras apresentações; classificar cada SKU pelo cadastro real, não somente pela marca.

## Categorias sugeridas para classificação

1. Proteínas: whey, beef protein, blends e hipercalóricos.
2. Creatina e desempenho: creatina, beta-alanina, BCAA e aminoácidos.
3. Pré-treino e energia: pré-treinos, cafeína e bebidas funcionais.
4. Vitaminas e minerais: multivitamínicos, vitaminas isoladas e minerais.
5. Encapsulados: cápsulas, comprimidos e softgels; destaque especial para Herbolab.
6. Alimentos funcionais: pastas de amendoim, barras, snacks e bebidas prontas.
7. Recuperação e bem-estar: colágeno, ômegas e demais produtos conforme a descrição oficial.

A categoria final deve respeitar a ficha do fornecedor e a apresentação real. Não inferir benefícios terapêuticos ou alegações de saúde.

## Regras de importação

- Priorizar apenas as dez marcas aprovadas nesta primeira etapa.
- Manter nome, sabor/variante, peso/volume, quantidade por embalagem e unidade de venda exatamente como o fornecedor informa.
- Preservar código/SKU do fornecedor quando disponível e manter um identificador interno separado quando necessário.
- Registrar URL de origem e data/hora da captura.
- Armazenar preço de compra apenas após login e leitura autorizada do fornecedor; nunca estimar preço.
- Estoque deve ter estados explícitos: disponível, esgotado ou não informado. Não converter “não informado” em zero nem em disponível.
- Não baixar imagens em massa nem reutilizá-las comercialmente sem verificar os termos e a autorização do fornecedor/marca.
- A importação deve ser idempotente: uma atualização do mesmo código do fornecedor atualiza o registro existente em vez de criar duplicata.
- Fazer prévia, validar erros e exigir confirmação antes de gravar no banco.
- Não publicar anúncios ou alterar preços de venda automaticamente nesta fase.

## Situação da integração

- Catálogo público consultável: confirmado.
- Marcas e exemplos de produtos: confirmados na página pública.
- Preços de distribuidor: exigem login/cadastro.
- API, feed ou exportação CSV/XLSX oficial: ainda não confirmados.
- Importação automática: não implementada.
- Banco Supabase: migration inicial ainda não aplicada/testada.
- Próximo passo técnico: obter da Body Burn a confirmação de API/feed/exportação autorizada ou um arquivo de catálogo exportado pela própria conta.

## Modelo de dados de entrada

O arquivo `templates/body_burn_catalog_import.csv` é um modelo de preparação. Ele não deve ser tratado como importador operacional até existir validação no backend e mapeamento final para o banco.

Campos:
- `supplier_product_code`: código/SKU da Body Burn, se fornecido.
- `power_nutri_sku`: SKU interno; deixar vazio até ser definido.
- `product_name`: nome oficial do produto.
- `brand`: marca conforme o fornecedor.
- `category`: categoria conferida.
- `variant`: sabor ou variação.
- `package_size`: peso, volume ou quantidade da embalagem.
- `description`: descrição oficial, se disponibilizada.
- `image_url`: URL de imagem fornecida oficialmente.
- `supplier_cost`: preço de compra exibido à conta autorizada.
- `supplier_stock_status`: available, out_of_stock ou unknown.
- `supplier_stock_quantity`: quantidade, somente se o fornecedor informar número.
- `source_product_url`: URL do produto no catálogo.
- `captured_at`: data/hora da coleta.

Não preencher os campos com dados inventados. Valores desconhecidos devem permanecer vazios ou usar `unknown` no campo de situação de estoque.
