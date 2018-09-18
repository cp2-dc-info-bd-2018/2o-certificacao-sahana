use sahana;

insert into rodoviaria (id, qtd_de_onibus, estado,municipio,endereço) values
(1, 20, rio de janeiro,rio de janeiro, Av. Graça Aranha 5-7 - Centro 20011-030 ),
(2, 27, rio de janeiro, rio de janiro, Av. Nilo Peçanha 26 - Centro 20020-100),
(3, 30, rio de janeiro, rio de janeiro, Av. Francisco Bicalho 1 - Santo Cristo 20220-310),
(4, 29, rio de janeiro, duque de caxias, R. Mariano Sendra dos Santos - Centro 25010-080),
(5,26, sao paulo,São Paulo ,Av. Cruzeiro do Sul 1800 - Santana  01142-300),
(6, 35, bahia, vila rica,Barreiras 47813-058)

inser into fiscal (id, data_nascimento, identidade, nome, id_fiscal, sexo) values
(1,28081980,265648264,sonia,1,feminino),
(2,31051977,256987453,fernando,2,masculino),
(3,06011980,895742314,felix,3,masculino),
(4,15021991,965741265,viviane,4,feminino),
(5,18031987,452487568,marcos,5,masculino),
(6,21061978,569155624,cesar,6,masculino),
(7,21061995,567412587,ester,7,feminino)

inser into motorista (id, nome, sexo, data_nascimento, identidade) values
(1,ana,feminino,15011997,147852987),
(2,severino,masculino,14051987,785412369),
(3,andre,masculino,16031983,951236874),
(4,daniel,masculino,18051983,753269841),
(5,meyrielle,feminino,17091979,985632147),
(6,taisa,feminino,21071984,741256398),
(7,leonardo,masculino,23041988,741258369)

inser into onibus (id, qtd_de_assento, id_rodoviaria) values
(1,44,1),
(2,44,2),
(3,44,3), 
(4,44,4), 
(5,44,5), 
(6,44,6), 
(7,44,7)

insert into guia (id, nome, data_nascimento, bagagens) values
(1,caio,12051999,1),
(2,arsi,16041988,3),
(3,felix,170519872,),
(4,patricia,19061989,1),
(5,julia,24051999,3),
(6,isabella,27121975,2),
(7,alex,,14051998,2)

insert into viagem_direta (id,data_chegada,data_partida,hora_partida, hora_chegada , origem ,destino)values 
(1,16012018,15022018,1400,0600,bahia,bahia),
(2,15022018,15032018,1300,0600,sao paulo,sao paulo),
(3,17032018,15042018,1400,0600,rio dejaneiro,rio dejaneiro),
(4,18042018,15052018,1400,0600,bahia,bahia),
(5,19052018,15062018,1400,0600,rio de janeio,rio dejaneiro),
(6,20062018,15072018,1400,0600,bahia,bahia),
(7,21012018,15022018,1400,0600,sao paulo,sao paulo)

insert into viagem_turistica(id,data_chegada,data_partida,hora_partida, hora_chegada , origem ,destino) values
(1,14022018,14032018,1300,0700,rio de janeiro,sao paulo,1),
(2,15022018,15042018,1300,0700,bahia,rio de janeiro,2),
(3,16022018,16042018,1300,0700,sao paulo,bahia,3,),
(4,17022018,16042018,1300,0700,bahia,sao paulo,4),
(5,18022018,16042018,1300,0700,sao paulo,bahia,5),
(6,19022018,16042018,1300,0700,rio de janeiro,sao paulo,6),
(7,20022018,16042018,1300,0700,sao paulo,bahia,7)

inser into parada (id, hora_chegada_planejada,hora_partida_planejada)values
(1,1800,1830),
(2,1800,1830),
(3,1800,1830),
(4,1800,1830),
(5,1800,1830),
(6,1800,1830),
(7,1800,1830)

insert into ticket_de_mesa (id,assento,fileira,preco,id_vigemd,id_viagemt,id_passageiro,id_onibus) values
(1,3,1,30,1,1,1,1),
(2,4,1,30,2,2,2,2),
(3,1,1,30,3,3,3,3),
(4,15,4,30,4,4,4,4),
(5,34,9,30,5,5,5,5),
(6,17,5,30,6,6,6,6),
(7,9,3,30,7,7,7,7)

insert into parada_viagem_turistica(id_parada,id_viagemt) values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7)

insert into onibus_motorista(hora, dia, id_onibus,id_motorista)values
(1400,14022018,1,1),
(1400,15022018,2,2),
(1400,16022018,3,3),
(1400,17022018,4,4),
(1400,18022018,5,5),
(1400,19022018,6,6),
(1400,20022018,7,7)