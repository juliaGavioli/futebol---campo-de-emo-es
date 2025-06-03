create database campo;
use campo;

create table usuario (
idUsuario int primary key auto_increment,
Nome varchar (45),
Email varchar (100),
Senha varchar (45));

create table pergunta (
idPergunta int primary key auto_increment,
Enunciado varchar (200),
AlternativaCorreta varchar (100));

create table resposta (
idResposta int primary key auto_increment,
fkusuario int not null,
fkpergunta int,
Tempogasto datetime,
certas int,
erradas int,
constraint PKcomposta unique (fkusuario,fkpergunta),
constraint fkusuario
foreign key (fkusuario) references usuario(idUsuario),
constraint fkpergunta
foreign key (fkpergunta) references pergunta(idPergunta)
);

insert into pergunta (idPergunta,Enunciado,AlternativaCorreta) values
(1,'Quantas vezes Marta foi eleita a melhor jogadora do mundo pela fifa?','Conquistou 6 bolas de ouro'),
(2,'Qual país não participou da Copa do Mundo de 2022?','Itália'),
(3,'Quantos jogadores um time de futebol tem em campo durante uma partida oficial?','11'),
(4,'Os jogadores que permanecem em campo durante toda a partida são chamados de?','Titulares'),
(5,'Qual é a duração de uma partida oficial de futebol (sem considerar acréscimos)?','90 minutos'),
(6,'Qual jogador é conhecido por ter conquistado todos os principais prêmios do futebol, incluindo Copa do Mundo, Champions League, Bola de Ouro e títulos nacionais?','Lionel Messi'),
(7,'Quem foi a campeã da Copa do Mundo Feminina de 2019?','Estados Unidos'),
(8,'As copas do Mundo de futebol de 26 e 42 não foram disputadas por qual razão?','Pelo motivo da Segunda Guerra Mundial, que ocorreu entre 38 e 45'),
(9,'Tamires, jogadora do Corinthians, tem se destacado principalmente em qual competição internacional com a Seleção Brasileira?','Copa do Mundo Feminina'),
(10,'Qual é o jogador responsável por representar a equipe em campo e conversar com o árbitro durante a partida?','Capitão do time'),
(11,'Qual é o time brasileiro de futebol feminino com mais títulos conquistados até hoje?','Corinthians'),
(12,'Qual seleção de futebol feminino conquistou a medalha de ouro nas Olimpíadas de 2020 (realizadas em 2021)?','Canadá'),
(13,'Quais seleções do futebol masculino se enfrentaram na final da Copa do Mundo de 2022?','Argentina e França'),
(14,'Qual seleção venceu a Copa do Mundo de 2014?','Alemanha'),
(15,'Em qual país foram realizados os jogos da Copa do Mundo de 2010?','África do Sul');

select * from usuario;
select * from pergunta;
select * from resposta;

select u.nome, 
u.email,
u.senha, 
r.Tempogasto,
r.certas, 
r.erradas 
from usuario u 
join resposta r on r.fkusuario = u.idusuario;

select r.Tempogasto ,
r.certas ,
r.erradas
from resposta r where fkusuario = 8 ;
SELECT * FROM RESPOSTA;
select r.certas as 'Total de respostas certas',
r.erradas as 'Total de respostas erradas'
from resposta r;