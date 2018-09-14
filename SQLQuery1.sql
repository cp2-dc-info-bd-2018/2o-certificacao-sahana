Use Sahana;


create table rodoviaria (
             id int,
			 qtd_de_onibus int,
			 estado varchar(80),
			 municipio varchar(80),
			 endereco varchar (80),
			 primary key (id)
			 );
 Create Table fiscal (
             id int,
			 data_nascimento int,
			 identidade int,
			 nome varchar (50),
			 id_fiscal int,
			 sexo varchar (20),
			 primary key (id),
			 foreign key (id_fiscal) references fiscal (id) 
			 );
Create Table motorista (
               id int,
			   nome varchar (30),
			   sexo varchar (30),
			   data_nascimento int,
			   identidade int,
			   primary key (id)
			   );
create table onibus (
             id int,
			 qtd_de_assento int,
			 id_rodoviaria int,
			 primary key (id),
			 foreign key (id_rodoviaria) references rodoviaria (id)
			 );			   
create table guia (
			 id int ,
			 data_nascimento int,
			 identidade int,
			 sexo varchar(20),
			 nome varchar (30),
			 primary key (id)
			 );

create table passageiro (
             id int,
			 nome char,
			 data_nascimento int,
			 bagagens int,
			 primary key (id)
			 );
create table viagem_direta(
		     id int,
			 data_chegada int,
			 data_partida int,
			 hora_chegada int,
			 hora_partida int,
			 origem int,
			 destino int,
			 primary key (id),
			 foreign key (origem ) references rodoviaria (id),
			 foreign key (destino) references rodoviaria (id)
			 );
create table viagem_turistica(
			 id int,
			 data_chegada int,
			 data_partida int,
			 hora_chegada int,
			 hora_partida int,
			 destino int,
			 origem int ,
			 id_guia int,
			 primary key (id),
			 foreign key (id_guia) references guia (id) ,
			 foreign key (origem ) references rodoviaria (id),
			 foreign key (destino) references rodoviaria (id)
			 );
create table parada (
			 id int,
			 hora_chegada_planejada int,
			 hora_partida_planejada int,
			 primary key (id)
			 );

create table ticket (
			 id int ,
			 assento int,
			 fileira int,
			 preco int ,
			 id_viagemd int,
			 id_viagemt int,
			 id_passageiro int,
			 id_onibus int,
			 primary key (id),
			 foreign key (id_viagemt) references viagem_turistica(id),
			 foreign key (id_viagemd) references viagem_direta(id),
			 foreign key (id_passageiro) references passageiro (id),
			 foreign key (id_onibus) references onibus (id)
			 );
create table parada_viagem_turistica(
			 id_parada int,
			 id_viagemt int,
			 primary key (id_parada, id_viagemt),
			 foreign key (id_parada) references parada (id),
			 foreign key (id_viagemt) references viagem_turistica (id)
			 );
create table onibus_motorista(
			 hora int,
			 dia int,
			 id_onibus int,
			 id_motorista int,
			 primary key (id_motorista, id_onibus),
			 foreign key (id_onibus) references onibus (id ),
			 foreign key (id_motorista ) references motorista (id)
			 );



