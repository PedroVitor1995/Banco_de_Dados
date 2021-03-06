create table hospede(
	cod_hospede serial primary key,
	nome varchar(100),
	dt_nasc date
);

create table funcionario(
	cod_funcionario serial primary key,
	nome varchar(100),
	dt_nasc date
	
);

create table categoria(
	cod_categoria serial primary key,
	nome varchar(100),
	descricao varchar(100),
	valor_dia float 
);

create table apto(
	numero serial primary key,
	status varchar(100),
	localizacao varchar(100),
	cod_categoria int,
	foreign key (cod_categoria) references categoria(cod_categoria)
);

create table hospedagem(
	cod_hospedagem serial primary key,
	dt_entrada date,
	dt_prev_saida date,
	dt_saida date,
	cod_hospede int,
	cod_funcionario int,
	numero int,
	foreign key (cod_hospede) references hospede(cod_hospede),
	foreign key (cod_funcionario) references funcionario(cod_funcionario),
	foreign key (numero) references apto(numero)
);

create table reserva(
	cod_reserva serial primary key,
	dt_prev_entrada date,
	dt_prev_saida date,
	cod_hospede int,
	cod_funcionario int,
	numero int,
	foreign key (cod_hospede) references hospede(cod_hospede),
	foreign key (cod_funcionario) references funcionario(cod_funcionario),
	foreign key (numero) references apto(numero)
);


insert into hospede values(1,'Pedro','1995-12-02')
insert into hospede values(2,'Maria','1990-06-30')
insert into hospede values(3,'Mario','2001-01-11')
insert into hospede values(4,'Adriana','1986-10-01')
insert into hospede values(5,'Marta','1994-09-22')
insert into hospede values(6,'Joana','1970-12-30')
insert into hospede values(7,'Paulo','1994-09-21')
insert into hospede values(8,'Francisco','1983-05-12')
insert into hospede values(9,'Carlos','1968-11-21')
insert into hospede values(10,'Antonio','1957-01-19')
insert into hospede values(11,'Jose','1960-02-27')
insert into hospede values(12,'João','1965-08-09')
-- Foi adicionado o campo nacionalidade na tabela
insert into hospede values(13,'Roberto','1990-06-30','Portugues')
insert into hospede values(14,'Rogerio','1905-11-23','Brasileiro')
insert into hospede values(15,'Paola','1990-06-30','Espanhol')

insert into funcionario values(1,'Pedro','1995-12-02')
insert into funcionario values(2,'Francisca','1988-10-16')
insert into funcionario values(3,'Jose','2000-08-25')
-- Foi adicionado o campo salario na tabela
insert into funcionario values(4,'Joaquim','1990-04-12',1500.00)
insert into funcionario values(5,'Tiago','1970-08-28',3000.00)
insert into funcionario values(6,'Ana','2001-10-05',1800.00)

insert into categoria values(1,'Luxo','Quarto com ar-condicionado',175.00)
insert into categoria values(2,'Simples','Quarto com ventilador',120.00)
insert into categoria values(3,'Super Luxo','Quarto com ar-condicionado e sala com umidificador de ar',200.00)
insert into categoria values(4,'Economico','Quarto com ventilador e sala com umidificador de ar',150.00)
insert into categoria values(5,'Rik Luxo','Quarto com ar-condicionado,ventilador e sala com umidificador de ar',250.00)
insert into categoria values(6,'Familia','Acima de 2 quartos todos com ar-condicionado',670.00)

insert into apto values(101,'Ocupado','1° andar',2)
insert into apto values(102,'Reservado','1° andar',2)
insert into apto values(103,'Reservado','1° andar',3)
insert into apto values(104,'Ocupado','1° andar',1)
insert into apto values(201,'Reservado','2° andar',2)
insert into apto values(202,'Ocupado','2° andar',1)
insert into apto values(203,'Desocupado','2° andar',1)
insert into apto values(204,'Ocupado','2° andar',3)
insert into apto values(301,'Desocupado','3° andar',3)
insert into apto values(302,'Ocupado','3° andar',1)
insert into apto values(303,'Desocupado','3° andar',2)
insert into apto values(304,'Ocupado','3° andar',3)
insert into apto values(305,'Ocupado','3° andar',6)

insert into hospedagem values(1,'2019-05-01','2019-05-06','2019-05-06',1,2,101)
insert into hospedagem values(2,'2019-04-29','2019-05-03','2019-05-03',2,3,304)
insert into hospedagem values(3,'2019-05-02','2019-05-09','2019-05-09',5,2,202)
insert into hospedagem values(4,'2019-04-22','2019-04-28','2019-04-28',6,1,104)
insert into hospedagem values(5,'2019-05-09','2019-05-16','2019-05-16',7,1,302)
insert into hospedagem values(6,'2019-03-12','2019-03-19','2019-03-19',8,3,204)
insert into hospedagem values(7,'2019-03-12','2019-03-19','2019-03-19',1,2,304)
insert into hospedagem values(8,'2019-05-09','2019-05-16','2019-05-16',2,1,101)
insert into hospedagem values(9,'2019-04-22','2019-04-28','2019-04-28',4,3,304)
insert into hospedagem values(10,'2017-12-02','2017-12-12','2017-12-12',12,2,202)
insert into hospedagem values(11,'2018-12-02','2018-12-12','2018-12-12',12,1,104)
insert into hospedagem values(12,'2018-12-02','2018-12-12','2018-12-12',11,3,201)
insert into hospedagem values(13,'2017-12-02','2017-12-12','2017-12-12',1,2,201)
insert into hospedagem values(14,'2019-05-03','2019-05-09','2019-05-09',12,1,204)
insert into hospedagem values(15,'2019-05-06','2019-05-012','2019-05-12',1,3,101)
insert into hospedagem values(16,'2011-07-10','2011-07-23','2011-07-23',1,4,302)
insert into hospedagem values(17,'2009-11-01','2009-11-05','2009-11-05',1,5,103)
insert into hospedagem values(18,'2009-10-27','2009-11-08','2009-11-08',1,1,202)
insert into hospedagem values(19,'2016-02-11','2016-02-15','2016-02-15',1,6,301)
insert into hospedagem values(20,'2018-09-21','2018-09-30','2018-09-30',1,6,102)
insert into hospedagem values(21,'2014-04-17','2014-04-25','2014-04-25',1,5,303)
insert into hospedagem values(22,'2002-11-05','2002-11-15','2002-11-15',1,5,203)
insert into hospedagem values(23,'2008-09-09','2008-09-17','2008-09-17',1,4,305)
insert into hospedagem values(24,'2018-12-23','2019-01-02','2019-01-02',1,3,104)
insert into hospedagem values(25,'2019-04-27','2019-05-05','2019-05-05',1,1,204)
insert into hospedagem values(26,'2018-05-04','2018-05-17','2018-05-17',12,4,301)

insert into reserva values(1,'2019-05-03','2019-05-09',3,1,102)
insert into reserva values(2,'2019-05-04','2019-05-11',4,3,201)
insert into reserva values(3,'2019-05-07','2019-05-12',5,2,103)
insert into reserva values(4,'2018-05-07','2018-05-12',1,3,202)
insert into reserva values(5,'2018-05-04','2018-05-11',8,1,104)
insert into reserva values(6,'2017-12-02','2017-12-12',10,2,304)
insert into reserva values(7,'2018-12-02','2018-12-12',1,3,204)
insert into reserva values(8,'2019-04-22','2019-04-28',4,1,304)
insert into reserva values(9,'2018-12-02','2018-12-12',12,1,104)
insert into reserva values(10,'2016-04-22','2016-04-28',6,2,104)
insert into reserva values(11,'2018-12-02','2018-12-18',2,4,201)


				
				-- LISTAR DE EXERCICIO 1 --
					
-- 1. Nomes das categorias que possuam valores de diárias entre R$ 100,00 e R$ 200,00.
	select nome from categoria where valor_dia>=100  and valor_dia<=200
	
-- 2. Categorias cujos nomes possuam a palavra ‘Luxo’.
	select nome from categoria where nome ilike '%Luxo%'

-- 5. Categorias de código 1, 2, 3, 11, 34, 54, 24 ou 12. 
	select cod_categoria,nome from categoria where cod_categoria=1 or cod_categoria=2 
	or cod_categoria=3 or cod_categoria=11 or cod_categoria=34 or cod_categoria=54 
	or cod_categoria=24 or cod_categoria=12

-- 6. Apartamentos cujas categorias iniciam com a palavra ‘Luxo’.
	select numero from categoria natural join apto where nome ilike 'Luxo%'
	
-- 7. Quantidade de apartamentos cadastrados no sistema.
	select count(*) from apto
	
-- 8. Somatório dos preços das categorias. 
	select sum(valor_dia) from categoria

-- 9. Média de preços das categorias. 
	select avg(valor_dia) from categoria

-- 10. Maior preço de categoria. 
	select max(valor_dia) from categoria

-- 11. Menor preço de categoria.
	select min(valor_dia) from categoria
	
-- 12. O preço média das diárias dos apartamentos ocupados por cada hóspede.
	select hospede.nome,avg(valor_dia) from categoria natural join apto 
	natural join hospedagem inner join hospede on(hospedagem.cod_hospede = hospede.cod_hospede)
	group by hospede.nome
	
-- 13. Quantidade de apartamentos para cada categoria. 
	select nome,count(numero) from categoria natural join apto group by cod_categoria
	
	-- OUTRA MANEIRA DE FAZER
	select nome,count(numero) from categoria natural join apto 
	group by cod_categoria order by cod_categoria asc
	
-- 14. Categorias que possuem pelo menos 2 apartamentos. 
	select categoria.nome from categoria natural join apto 
	group by  categoria.nome having count(numero) >= 2
	
-- 15. Nome dos hóspedes que nasceram após 1° de janeiro de 1970. 
	select nome from hospede where dt_nasc > '1970-01-01'
	
-- 16. Quantidade de hóspedes. 
	select count(cod_hospede) from hospede
	
-- 17. Apartamentos que foram ocupados pelo menos 2 vezes. 
	select numero from hospedagem natural join apto
	group by numero having count(numero) >= 2

-- 18. Altere a tabela Hóspede, acrescentando o campo "Nacionalidade". 
	alter table hospede add nacionalidade varchar(100);
	
	update hospede set nacionalidade='Brasileiro' where cod_hospede=1
	update hospede set nacionalidade='Espanhol' where cod_hospede=2
	update hospede set nacionalidade='Argentino' where cod_hospede=3
	update hospede set nacionalidade='Italiano' where cod_hospede=4
	update hospede set nacionalidade='Ingles' where cod_hospede=5
	update hospede set nacionalidade='Brasileiro' where cod_hospede=6
	update hospede set nacionalidade='Espanhol' where cod_hospede=7
	update hospede set nacionalidade='Brasileiro' where cod_hospede=8
	update hospede set nacionalidade='Italiano' where cod_hospede=9
	update hospede set nacionalidade='Portugues' where cod_hospede=10
	update hospede set nacionalidade='Argentino' where cod_hospede=11
	update hospede set nacionalidade='Ingles' where cod_hospede=12
	
-- 19.Quantidade de hóspedes para cada nacionalidade. 
	select nacionalidade,count(cod_hospede) from hospede group by nacionalidade
	
-- 20. A data de nascimento do hóspede mais velho. 
	select min(dt_nasc) from hospede
	
-- 21. A data de nascimento do hóspede mais novo.
	select max(dt_nasc) from hospede
	
-- 22. Reajuste em 10% o valor das diárias das categorias.
	update categoria set valor_dia=valor_dia + valor_dia*0.10 where cod_categoria=1
	update categoria set valor_dia=valor_dia + valor_dia*0.10 where cod_categoria=2
	update categoria set valor_dia=valor_dia + valor_dia*0.10 where cod_categoria=3
	update categoria set valor_dia=valor_dia + valor_dia*0.10 where cod_categoria=4
	update categoria set valor_dia=valor_dia + valor_dia*0.10 where cod_categoria=5
	
-- 23. O nome das categorias que não possuem apartamentos. 
	select nome from categoria where cod_categoria not in
	(select cod_categoria from categoria natural join apto)
	
-- 24. O número dos apartamentos que nunca foram ocupados.
	select numero from apto where numero not in
	(select numero from apto natural join hospedagem)
	
-- 25. O número do apartamento mais caro ocupado pelo João.
	select numero from hospede natural join hospedagem natural join apto
	inner join categoria on (apto.cod_categoria=categoria.cod_categoria)
	where hospede.nome='João' and valor_dia in
	(select max(valor_dia) from hospede natural join hospedagem natural join apto
	inner join categoria on (apto.cod_categoria=categoria.cod_categoria)
	where hospede.nome='João')

-- 26. O nome dos hóspedes que nunca se hospedaram no apartamento 201.
	select distinct nome from hospede
	where cod_hospede not in 
	(select cod_hospede from hospede natural join hospedagem natural join apto
	where numero = 201)
	
-- 27. O nome dos hóspedes que nunca se hospedaram em apartamentos da categoria LUXO. 
	select distinct nome from hospede 
	where cod_hospede not in 
	(select cod_hospede from hospede natural join hospedagem natural join apto 
	inner join categoria on (apto.cod_categoria = categoria.cod_categoria)
	where upper(categoria.nome) = 'LUXO')	
	
-- 28. O nome dos hóspedes que se hospedaram ou reservaram apartamento do tipo LUXO.
	select hospede.nome from hospede natural join hospedagem natural join apto
	inner join categoria on (apto.cod_categoria = categoria.cod_categoria)
	where upper(categoria.nome) = 'LUXO'
	
							union
	
	select hospede.nome from hospede natural join reserva natural join apto
	inner join categoria on (apto.cod_categoria = categoria.cod_categoria)
	where upper(categoria.nome) = 'LUXO'
	
-- 29. O nome dos hóspedes que se hospedaram mas nunca reservaram apartamentos do tipo LUXO.
	select hospede.nome from hospede natural join hospedagem natural join apto
	inner join categoria on (apto.cod_categoria = categoria.cod_categoria)
	where upper(categoria.nome) = 'LUXO' 
	except
	select hospede.nome from hospede natural join reserva natural join apto
	inner join categoria on (apto.cod_categoria = categoria.cod_categoria)
	where upper(categoria.nome) = 'LUXO'

-- 30. O nome dos hóspedes que se hospedaram e reservaram apartamento do tipo LUXO.
	select hospede.nome from hospede natural join hospedagem natural join apto
	inner join categoria on (apto.cod_categoria = categoria.cod_categoria)
	where upper(categoria.nome) = 'LUXO' 
	
				intersect

	select hospede.nome from hospede natural join reserva natural join apto
	inner join categoria on (apto.cod_categoria = categoria.cod_categoria)
	where upper(categoria.nome) = 'LUXO'
							
							
							
				-- LISTAR DE EXERCICIO 2 --
					
-- 1. Listagem dos hóspedes contendo nome e data de nascimento, ordenada em ordem crescente 
-- por nome e decrescente por data de nascimento. 
	select nome,dt_nasc from hospede order by nome asc,dt_nasc desc

-- 2. Listagem contendo os nomes das categorias, ordenados alfabeticamente. A coluna de nomes 
-- deve ter a palavra ‘Categoria’ como título. 
	select nome as Categoria from categoria order by nome asc

-- 3. Listagem contendo os valores de diárias e os números dos apartamentos, ordenada em ordem decrescente de valor. 
	select valor_dia,numero from categoria natural join apto order by valor_dia desc
	
-- 4. Categorias que possuem apenas um apartamento. 
	 select nome from categoria natural join apto 
	 group by nome having count(numero)=1
	 
	 -- OUTRA MANEIRA DE FAZER
	 select nome from categoria where cod_categoria in
	(select cod_categoria from categoria natural join apto 
	 group by cod_categoria having count(numero)=1)
	
-- 5. Listagem dos nomes dos hóspedes brasileiros com mês e ano de nascimento, por ordem decrescente de 
-- idade e por ordem crescente de nome do hóspede.  	
	select nome,extract(month from dt_nasc) as mes,extract(year from dt_nasc) as ano from hospede
	order by nome asc

-- 6. Listagem com 3 colunas, nome do hóspede, número do apartamento e quantidade (número de vezes que 
-- aquele hóspede se hospedou naquele apartamento), em ordem decrescente de quantidade. 
	select nome,numero,count(numero) from hospede natural join hospedagem natural join apto
	group by nome,numero order by count(numero) desc
	
-- 7. Categoria cujo nome tenha comprimento superior a 15 caracteres. 
	select nome from categoria where length(nome) > 15

-- 8. Número dos apartamentos ocupados no ano de 2017 com o respectivo nome da sua categoria.
-- 9. Título do livro, nome da editora que o publicou e a descrição do assunto. 
-- 10. Crie a tabela funcionário com as atributos: cod_func, nome, dt_nascimento e salário. Depois disso, acrescente 
-- o cod_func como chave estrangeira nas tabelas hospedagem e reserva. 
	alter table funcionario add salario float;

	update funcionario set salario=1200.00 where cod_funcionario=1
	update funcionario set salario=1600.00 where cod_funcionario=2
	update funcionario set salario=2000.00 where cod_funcionario=3
	
-- 11. Mostre o nome e o salário de cada funcionário.  Extraordinariamente, cada funcionário receberá um 
-- acréscimo neste salário de 10 reais para cada hospedagem realizada. 
	select nome,salario+10*count(cod_hospedagem) from funcionario natural join hospedagem
	group by nome,salario
	
-- 12. Listagem das categorias cadastradas e para aquelas que possuem apartamentos, relacionar também o 
-- número do apartamento, ordenada pelo nome da categoria e pelo número do apartamento. 
	select nome,numero from categoria natural join apto
	order by nome asc,numero asc
	
-- 13. Listagem das categorias cadastradas e para aquelas que possuem apartamentos, relacionar também o 
-- número do apartamento, ordenada pelo nome da categoria e pelo número do apartamento. Para aquelas que não 
-- possuem apartamentos associados, escrever "não possui apartamento". 
-- 14. O nome dos funcionário que atenderam o João (hospedando ou reservando) ou que hospedaram ou reservaram 
-- apartamentos da categoria luxo.
	select funcionario.nome from funcionario natural join hospedagem 
	inner join hospede on (hospedagem.cod_hospede=hospede.cod_hospede)
	where hospede.nome='João'
			
				union
				
	select funcionario.nome from funcionario natural join reserva 
	inner join hospede on (reserva.cod_hospede=hospede.cod_hospede)
	where hospede.nome='João'
	
				union
				
	select funcionario.nome from funcionario natural join hospedagem natural join apto
	inner join categoria on (apto.cod_categoria=categoria.cod_categoria)
	where categoria.nome ilike 'luxo%'
		
				union
		
	select funcionario.nome from funcionario natural join reserva natural join apto
	inner join categoria on (apto.cod_categoria=categoria.cod_categoria)
	where categoria.nome ilike 'luxo%'
	
-- 15. O código das hospedagens realizadas pelo hóspede mais velho que se hospedou no apartamento mais caro. 
-- 16. Sem usar subquery, o nome dos hóspedes que nasceram na mesma data do hóspede de código 2. 	
	select h2.nome from hospede as h1 cross join hospede as h2
	where h1.cod_hospede = 2 and h1.dt_nasc = h2.dt_nasc and h2.cod_hospede != 2
	
-- 17. O nome do hóspede mais velho que se hospedou na categoria mais cara mo ano de 2017. 
-- 18. O nome das categorias que foram reservadas pela Maria ou que foram ocupadas pelo João quando ele foi atendido pelo Joaquim.
	select categoria.nome from hospede natural join reserva natural join apto
	inner join categoria on (apto.cod_categoria=categoria.cod_categoria)
	where hospede.nome ilike 'Maria%'
	
			union
	
	select categoria.nome from hospede natural join hospedagem inner join funcionario
	on (hospedagem.cod_funcionario=funcionario.cod_funcionario)
	natural join apto inner join categoria on (apto.cod_categoria=categoria.cod_categoria)
	where hospede.nome ilike 'João%' and funcionario.nome ilike 'Joaquim%'
	
-- 19. O nome e a data de nascimento dos funcionários, além do valor de diária mais cara reservado por cada um deles. 
	select funcionario.nome,dt_nasc,max(valor_dia) from funcionario natural join reserva 
	natural join apto inner join categoria on (apto.cod_categoria=categoria.cod_categoria)
	group by funcionario.nome,dt_nasc
	
-- 20. A quantidade de apartamentos ocupados por cada um dos hóspedes (mostrar o nome). 
	select nome,count(numero) from hospede natural join hospedagem natural join apto
	group by nome
	
-- 21. A relação com o nome dos hóspedes, a data de entrada, a data de saída e o valor total pago em 
-- diárias (não é necessário considerar a hora de entrada e saída, apenas as datas).
	select hospede.nome,dt_entrada,dt_saida,to_number(to_char(age(dt_saida,dt_entrada),'DDD'),'00000')*valor_dia
	as valor_total_pago from hospede natural join hospedagem natural join apto
	inner join categoria on (apto.cod_categoria=categoria.cod_categoria)
		
-- 22. O nome dos hóspedes que já se hospedaram em todos os apartamentos do hotel.
	select nome from hospede natural join hospedagem natural join apto
	group by nome having count(distinct numero) = (select count(numero) from apto)
 	
			
			