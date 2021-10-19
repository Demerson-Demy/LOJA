default char set utf8
default collate utf8_general_ci;



CREATE TABLE tb_teste(  
    id_publico INT NOT NULL AUTO_INCREMENT,
    pb_sexo VARCHAR (10),
    pb_tipo VARCHAR (10),
    PRIMARY KEY (id_publico)
    ) default charset = utf8;

    DROP Table { database.loja.tb_teste};

CREATE TABLE tb_tamanho(
    tm_tamanho VARCHAR (3) NOT NULL,
    PRIMARY KEY (tm_tamanho)
) default charset = utf8;


CREATE TABLE tb_categoria(
    id_categoria INT NOT NULL AUTO_INCREMENT,
    cat_categoria enum ('Roupas','Acessorios'),
    cat_tipo VARCHAR (20) NOT NULL,
    PRIMARY KEY (id_categoria)
) DEFAULT charset = utf8;


DROP TABLE tb_categoria;


CREATE TABLE tb_funcionario (
    fn_codigo int AUTO_INCREMENT,
    fn_senha VARCHAR(6) NOT NULL,
    fn_nome VARCHAR(50),
    fn_cpf VARCHAR (14),
    fn_email VARCHAR (50),
    PRIMARY KEY (fn_codigo)

) DEFAULT charset = utf8;


CREATE TABLE tb_marca(
    id_marca INT AUTO_INCREMENT,
    mr_marca VARCHAR (35),
    mr_cor VARCHAR (15),
    cat_tipo VARCHAR (20) NOT NULL,
    PRIMARY KEY (id_marca)   
    \\falta criar a chave estrangeira\\

) DEFAULT charset = utf8;

ALTER TABLE tb_marca add foreign key (cat_tipo) references tb_categoria(cat_tipo);


CREATE TABLE tb_cadastro(
    id_cliente INT AUTO_INCREMENT,
    cl_nome varchar (50),
    cl_sexo enum ('Masculino','Feminino'),
    cl_estado VARCHAR(30),
    cl_cidade VARCHAR(30),
    cl_endereço VARCHAR(60),
    cl_celular VARCHAR(15),
    cl_email VARCHAR (60) NOT NULL,
    cl_senha int (6),
    PRIMARY KEY (id_cliente,cl_email)
        
) DEFAULT charset = utf8;

CREATE TABLE tb_venda(
    vd_codigo INT AUTO_INCREMENT,
    id_cliente INT,
    fn_codigo INT,
    vd_data DATE,
    vd_valor DECIMAL,
    PRIMARY KEY (vd_codigo)

) DEFAULT charset = utf8;

ALTER TABLE tb_venda ADD foreign key (id_cliente) references tb_cadastro(id_cliente);

ALTER TABLE tb_venda ADD FOREIGN KEY (fn_codigo) references tb_funcionario(fn_codigo);

ALTER TABLE tb_cadastro ADD foreign key (id_cliente) references tb_venda(id_cliente);


CREATE TABLE tb_itemvenda(
    vd_codigo INT,
    itm_codigo INT AUTO_INCREMENT,
    pd_codigo INT,
    itm_qtde INT,
    itm_unitario DECIMAL (14,2),
    itm_desconto DECIMAL (14,2),
    itm_total DECIMAL (14,2) generated always as (itm_unitario * itm_qtde - itm_desconto) virtual,
    PRIMARY KEY (itm_codigo)
) DEFAULT charset = utf8;


ALTER TABLE tb_itemvenda ADD foreign key (vd_codigo) references tb_venda(vd_codigo);

CREATE TABLE tb_produto(
    pd_codigo INT AUTO_INCREMENT,
    cat_tipo VARCHAR(20) NOT NULL,
    pd_vlrcompra DECIMAL(14,2),
    pd_vlrvenda DECIMAL(14,2),
    pd_estoque INT,
    tm_tamanho VARCHAR(3) NOT NULL,
    mr_marca VARCHAR(35),
    vd_codigo INT,
    pb_tipo VARCHAR(10),
    pd_imagem VARCHAR (1000),
    pd_entrada DATE,
    PRIMARY KEY (pd_codigo)

) DEFAULT charset = utf8;

DROP TABLE tb_produto;

ALTER TABLE tb_produto ADD foreign key (cat_tipo) references tb_categoria(cat_tipo);

ALTER TABLE tb_produto ADD foreign key (tm_tamanho) references tb_tamanho(tm_tamanho);

ALTER TABLE tb_produto ADD foreign key (mr_marca) references tb_marca(mr_marca);

ALTER TABLE tb_produto ADD foreign key (vd_codigo) references tb_venda(vd_codigo);


ALTER TABLE tb_produto add foreign key (pb_tipo) references tb_publico(pb_tipo);
