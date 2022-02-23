


create table Musica(
	idMusica INT PRIMARY KEY,
    titulo varchar(40),
    artista varchar (40),
    genero varchar (40)
);

insert into Musica values 
	('1' , 'Doutora' , 'McKevin' ,  'funk'),
    ('2' , 'Pandemia' , 'McKevin' , 'funk'),
    ('3' , 'Cavalinho' , 'McKevin' , 'funk'),
    ('4' , 'JunçãoVenenosa', 'McKevin' , 'funk'),
    ('5' , 'Terapia' , 'McKevin' , 'funk'),
    ('6' , 'ByeBye' , 'McKevin' , 'funk'),
    ('7' , 'Doutora3', 'Mckevin', 'funk');
    
    insert into Musica values 
		('8', 'MeuAmor', 'Pixote' , 'samba'),
        ('9', 'SemModeração' , 'Pixote' , 'samba'),
        ('10' , 'Insegurança' , 'Pixote' , 'samba'),
        ('11', 'SaudadeArregaça' , 'Pixote', 'samba'),
        ('12' , 'NãoSabe' , 'Pixote' , ' samba'),
        ('13', 'NemdeGraça' , 'Pixote' , 'samba'),
        ('14' , 'Dilema' , 'Pixote' , 'samba'),
        ('15' , 'BalaAzul', 'Teto' , 'Trap'),
        ('16' , 'MustangPreto', 'Teto' , 'Trap'),
        ('17' , 'DiaAzul' , 'Teto', 'trap'),
        ('18' , 'M4' , 'Teto' , 'trap'),
        ('19' , 'Paypal' ,'Teto', 'trap'),
        ('20', 'Futuro' , 'Teto', 'trap'),
        ('21' , 'Caliente' , 'Teto' , 'trap');
        
Select * from Musica;
alter table Musica add column Curtidas INT;
update Musica set Curtidas = 10000 where idMusica = 1;
update Musica set Curtidas = 30000 where idMusica = 2 ;
update Musica set Curtidas = 50000 where idMusica = 3 ;
update Musica set Curtidas = 60000 where idMusica = 4 ;
update Musica set Curtidas = 60000 where idMusica = 5 ;
update Musica set Curtidas = 30000 where idMusica = 6 ;
update Musica set Curtidas = 22000 where idMusica = 7 ;
update Musica set Curtidas = 23440 where idMusica = 8 ;
update Musica set Curtidas = 23450 where idMusica = 9 ;
update Musica set Curtidas = 33330 where idMusica = 10;
update Musica set Curtidas = 54430 where idMusica = 11 ;
update Musica set Curtidas = 20546 where idMusica = 12 ;
update Musica set Curtidas = 24433 where idMusica = 13 ;
update Musica set Curtidas = 23255 where idMusica = 14 ;
update Musica set Curtidas = 24546 where idMusica = 15 ;
update Musica set Curtidas = 24544 where idMusica = 16 ;
update Musica set Curtidas = 24543 where idMusica = 17 ;
update Musica set Curtidas = 23453 where idMusica = 18 ;
update Musica set Curtidas = 26666 where idMusica = 19 ;
update Musica set Curtidas = 20664 where idMusica = 20 ;
update Musica set Curtidas = 22111 where idMusica = 21 ;

table Musica modify column artista varchar(80);
update Musica set Curtidas = 4000 where idMusica = 1;
update Musica set Curtidas = 3000 where idMusica = 2 or idMusica = 3;
update musica set titulo = 'Doutora2' where idMusica = 5;
delete from Musica where idMusica = 4;
select * from Musica where genero <> 'funk';
select * from Musica where Curtidas <> '20';
desc Musica;

drop table Musica;