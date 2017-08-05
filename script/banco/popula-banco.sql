USE vidinha_balada;

load data local infile '/home/ubuntu/vidinha-de-balada/script/dados_gerados/tabela_info_deputados.csv' into table deputado fields terminated by ','
  enclosed by '"'
  lines terminated by '\n'
    (id, nome, partidoAtual, uf, foto, twitter, telefone, email);


load data local infile '/home/ubuntu/vidinha-de-balada/script/dados_gerados/empresas.csv' into table empresas fields terminated by ','
  enclosed by '"'
  lines terminated by '\n'
    (cnpj, nome, idEmpresa);


load data local infile '/home/ubuntu/vidinha-de-balada/script/dados_gerados/sessoes_mensal.csv' into table sessoesMes fields terminated by ','
  enclosed by '"'
  lines terminated by '\n'
    (mes, ano, quantidadeSessoes);


load data local infile '/home/ubuntu/vidinha-de-balada/script/dados_gerados/cota_por_estado.csv' into table cotas fields terminated by ','
  enclosed by '"'
  lines terminated by '\n'
    (uf, cota);


load data local infile '/home/ubuntu/vidinha-de-balada/script/dados_gerados/tabela_final_votacoes.csv' into table sessoesMesDeputado fields terminated by ','
  enclosed by '"'
  lines terminated by '\n'
    (mes, ano, idDeputado, quantidadeParticipacoes);


load data local infile '/home/ubuntu/vidinha-de-balada/script/dados_gerados/tabela_gastos_empresas.csv' into table gastos fields terminated by ','
  enclosed by '"'
  lines terminated by '\n'
    (idDeputado, anoEmissao, mesEmissao, cnpj, nomeFornecedor, nomeCategoria, idEmpresa, valor, id);


/*
load data local infile 'xxx' into table emendasPropostasDeputado fields terminated by ','
  enclosed by '"'
  lines terminated by '\n'
    (mes, ano, idDeputado, quantidade);

*/


load data local infile '/home/ubuntu/vidinha-de-balada/script/dados_gerados/tabela_selos_cota.csv' into table selosCota fields terminated by ','
  enclosed by '"'
  lines terminated by '\n'
    (id, idDeputado, ano, mes, selo);


load data local infile '/home/ubuntu/vidinha-de-balada/script/dados_gerados/tabela_selos_presencas.csv' into table selosPresenca fields terminated by ','
  enclosed by '"'
  lines terminated by '\n'
    (idDeputado, mes, ano, selo);
