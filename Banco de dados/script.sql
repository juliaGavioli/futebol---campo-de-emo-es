create database campo;
use campo;

create table usuario (
idUsuario int primary key auto_increment,
Nome varchar (45),
Email varchar (100),
Senha varchar (45)
);

create table pergunta (
idPergunta int primary key auto_increment,
Enunciado varchar (100),
Alternativa_a varchar (100),
Alternativa_b varchar (100),
Alternativa_c varchar (100)
);

create table resposta (
idResposta int primary key auto_increment,
fkusuario int,
fkpergunta int,
Resposta char(1),
RespostaIncorreta char (2),
constraint fkusuario
foreign key (fkusuario) references usuario(idUsuario),
constraint fkpergunta
foreign key (fkpergunta) references pergunta(idPergunta)
);



