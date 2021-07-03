CREATE TABLE adresa
(
    id_adresa number(5) not null PRIMARY KEY,
    judet varchar2(30) not null,
    localitate VARCHAR2(30) not null,
    strada VARCHAR2(50) not null,
    numar varchar2(5) not null,
    blocul  varchar2(5),
    scara varchar2(5),
    etaj number(2),
    apartament number(3),
    cod_postal number(15)
);

CREATE TABLE client_magazin
(
    id_client number(10) not null PRIMARY KEY,
    nume varchar2(30) not null,
    prenume VARCHAR2(30) not null,
    telefon VARCHAR2(10) not null,
    email varchar2(40),
    discount number(5),
    id_adresa number(10) not null,
    CONSTRAINT FK_id_adresa FOREIGN KEY(id_adresa) references
    adresa(id_adresa)
);

CREATE TABLE angajat
(
    id_angajat number(10) not null PRIMARY KEY,
    nume varchar2(30) not null,
    prenume VARCHAR2(30) not null,
    telefon VARCHAR2(15) not null,
    email varchar2(50),
    data_angajare date,
    id_adresa number(10) not null,
    CONSTRAINT FK_id_adresa2 FOREIGN KEY(id_adresa) references
    adresa(Id_adresa)
);

CREATE TABLE plata
(   id_costum number (10) not null,
    id_client number(10) not null,
    id_angajat number(10) not null,
    cantitate number(5) not null,
    valoare number(10) not null,
    data_plata date not null   
);

alter table plata
add constraint PK_plata
primary key(id_client, id_angajat, id_costum);

CREATE TABLE costum
(
    id_costum number(10) not null PRIMARY KEY,
    material varchar2(20) not null,
    marime VARCHAR2(5) not null,
    personaj VARCHAR2(30) not null,
    cantitate number(10) not null
    
);

CREATE TABLE croitor
(
    id_croitor number(10) not null PRIMARY Key,
    nume varchar2(50) not null,
    prenume varchar2(50) not null,
    telefon varchar(15) not null
);


CREATE TABLE work_on
(
    id_costum number(10) not null,
    id_croitor number(10) not null,
    durata number(10) not null
);

alter table work_on
add constraint PK_work_on
primary key(id_costum, id_croitor);


--Adresa

insert into adresa values(21, 'Prahova','Azuga','Tudor Vladimirescu','24A','12A','2',3,12,210101);
insert into adresa values(22, 'Prahova','Busteni','Unirii','25B','25B','1',1,1,210201);
insert into adresa values(23, 'Ilfov','Bucuresti','Zorilor','2A','22A','2C',10,45,310101);
insert into adresa values(24, 'Buzau','Dara','principala','56',null,null,null,null,010101);
insert into adresa values(25,'Prahova','Cosmarnic','Ecaterina Teodoroiu','35','32','7',2,6, 219101);
insert into adresa values(26, 'Gorj','Novaci','Eroilor','25',null,null,null,null,210191);
insert into adresa values(27, 'Gorj','Targu Jiu','Ecaterina teodoriu','56A','56A','2',3,12,210108);
insert into adresa values(28, 'Prahova','Baicoi','Iazuri','13','13B','89',9,12,210101);
insert into adresa values(29, 'Arges','Bujoi','Barajelor','15',null,null,null,null,219191);
insert into adresa values(30, 'Gorj','Olari','Varful Mandra','32S',null,null,null,null,222101);
insert into adresa values(31, 'Ilfov','Bucuresti','Macului','11D','11D','21',23,49,210133);
insert into adresa values(32, 'Arges','Pitesti','Dumbrava','24C','24C','5',13,52,210177);
insert into adresa values(33, 'Ilfov','Bucuresti','Tudor Vladimirescu','6C','12','90F',9,102,210101);
insert into adresa values(34, 'Prahova','Coslegi','Vaduri','84',null,null,null,null,210101);
insert into adresa values(35, 'Buzau','Zoita','Nufarului','80',null,null,null,null,210101);
insert into adresa values(36, 'Ilfov','Snagov','Cerbului','11',null,null,null,null,210101);
insert into adresa values(37, 'Ilfov','Bucuresti','Magura','24A','12A','2',3,12,219901);
insert into adresa values(38, 'Ilfov','Bucuresti','Tudor Vladimirescu','27A','12A','2',6,18,256101);
insert into adresa values(39, 'Ilfov','Snagov','Zanelor','66',null,null,null,null,210167);
insert into adresa values(40, 'Ilfov','Bucuresti','Tell','7','1S','2',15,57,330101);
insert into adresa values(41, 'Ilfov','Snagov','Tudor Vladimirescu','23',null,null,null,null,216071);

--Client

insert into client_magazin values(1, 'Vijulan','Andreea','0760774769', 'andreeavijulan@yahoo.com',null,21);
insert into client_magazin values(2, 'Vijulan','Stefania-Claudia','0789775768','vijulans@gmail.com',null,21);
insert into client_magazin values(3, 'Coiculescu','Veronica','0731386863','veronica34@gmail.com',null,22);
insert into client_magazin values(4, 'Popescu','Mihai-Alexandru','0253243247','popi56@magazincostume.com',null,23);
insert into client_magazin values(5, 'Ciudin','Luiza','0757693301','ciudinciudin1@yahoo.com',null,24);
insert into client_magazin values(6, 'Ciuciu','Stefania','0756111988','ciucius@gmail.com',null,25);
insert into client_magazin values(7, 'Dumitrescu','Andrei','0743434343',null,null,26);
insert into client_magazin values(8, 'Anica','Gabriel','0254290901',null,null,27);
insert into client_magazin values(9, 'Borcan','Miruna','0232345451','borcanmirunab@yahoo.com',null,28);
insert into client_magazin values(10, 'Popescu','Ion','0788567567','popescuion@gmail.com',null,29);
insert into client_magazin values(11, 'Popa','Andreea','0767676767','popaandreea6@yahoo.com',null,30);
insert into client_magazin values(12, 'Dima','Oana','0745454860','dimaoana@gmail.com',null,31);
insert into client_magazin values(13, 'Dorneanu','Alina-Mihaela','0767678932',' dralina@yahoo.com', null,32);
insert into client_magazin values(14,'Vijulan','Alexandru-Cosmin','0767687900', 'vijualexcosmin18@magazincostume.com' , null,31);
insert into client_magazin values(15, 'Dirstariu','Daria','0768909090',null,null,33);
insert into client_magazin values(16, 'Stancu','Mihai','0767343598',null,null,31);
insert into client_magazin values(17, 'Dobromir','Bianca','0253278351', 'dobro_bia@magazincostume.com', null,34);
insert into client_magazin values(18, 'Radoi','Alexandru','0767123456',null,null,26);
insert into client_magazin values(19, 'Udrescu','Vlad','0767191878','udri_vld@gmail.com',null,35);
insert into client_magazin values(20, 'Berculescu','Dan','0786509621',null,null,36);
insert into client_magazin values(21, 'Gama','Catalin','0798457980', 'gama_cata@magazincostume.com', null,37);
insert into client_magazin values(22, 'Pasere','Ion','0734678098',' pasere_ion@magazincostume.com', null,39);

--Angajat

insert into angajat values(61, 'Gama','Catalin','0798457980','gama_cata@magazincostume.com', to_date('05-01-2016', 'dd-mm-yyyy'), 37);
insert into angajat values(62, 'Niculete','Andrei','0767343098','niculete.andrei15@magazincostume' ,to_date('05-07-2018', 'dd-mm-yyyy'),38);
insert into angajat values(63, 'Pasere','Ion','0734678098','pasere_ion@magazincostume.com',to_date('05-06-2015', 'dd-mm-yyyy'),39);
insert into angajat values(64, 'Stancu','Rebeca','0765456189','stancur@magazincostume.com',to_date('05-10-2018', 'dd-mm-yyyy'),40);
insert into angajat values(65, 'Popescu','Karina','0768015731','popkarina@magazincostume',to_date('05-06-2015', 'dd-mm-yyyy'),41);
insert into angajat values(66, 'Vijulan','Alexandru-Cosmin','0767687900', 'vijualexcosmin18@magazincostume.com', to_date('05-08-2015', 'dd-mm-yyyy'),31);
insert into angajat values(67, 'Dobromir','Bianca','0253278351','dobro_bia@magazincostume.com', to_date('05-06-2015', 'dd-mm-yyyy'),34);
insert into angajat values(68, 'Popescu','Mihai-Alexandru','0253243247','popi56@magazincostume.com', to_date('05-06-2017', 'dd-mm-yyyy'),23);

--Plata

insert into plata values(181,1, 61, 2, 220, to_date('05-12-2017', 'dd-mm-yyyy'));
insert into plata values(181,1, 62, 1, 110, to_date('25-12-2020', 'dd-mm-yyyy'));
insert into plata values(182,2, 65,1, 100, to_date('05-12-2018', 'dd-mm-yyyy'));
insert into plata values(183,2,  65,2, 500, to_date('05-12-2018', 'dd-mm-yyyy'));
insert into plata values(183,12, 66,1, 225, to_date('05-12-2018', 'dd-mm-yyyy'));
insert into plata values(183,19, 61,3, 725, to_date('05-12-2018', 'dd-mm-yyyy'));
insert into plata values(183,22, 66,1, 225, to_date('18-10-2020', 'dd-mm-yyyy'));
insert into plata values(183,17, 66,2, 500, to_date('08-02-2020', 'dd-mm-yyyy'));
insert into plata values(183,21, 61,1, 225, to_date('05-12-2018', 'dd-mm-yyyy'));
insert into plata values(185,3, 66,3, 324, to_date('15-07-2019', 'dd-mm-yyyy'));
insert into plata values(185,9, 61,2, 216,  to_date('05-12-2017', 'dd-mm-yyyy'));
insert into plata values(185,10, 67,1, 108,  to_date('27-09-2018', 'dd-mm-yyyy'));
insert into plata values(185,13, 62,2, 216,  to_date('05-12-2017', 'dd-mm-yyyy'));
insert into plata values(185,19, 67,2 , 216,  to_date('27-09-2018', 'dd-mm-yyyy'));
insert into plata values(186,12, 66,5, 100, to_date('15-12-2019', 'dd-mm-yyyy'));
insert into plata values(186,13, 62,3, 60, to_date('12-11-2020', 'dd-mm-yyyy'));
insert into plata values(186,19, 62,1, 20, to_date('17-12-2018', 'dd-mm-yyyy'));
insert into plata values(187,10, 62,2, 190, to_date('05-12-2018', 'dd-mm-yyyy'));
insert into plata values(187,19, 61,2, 190,  to_date('05-02-2020', 'dd-mm-yyyy'));
insert into plata values(187,1, 63,1, 95,to_date('12-10-2020', 'dd-mm-yyyy'));
insert into plata values(188,14, 67,3, 80, to_date('06-09-2019', 'dd-mm-yyyy'));
insert into plata values(188,15, 61,2, 52,  to_date('05-12-2018', 'dd-mm-yyyy'));
insert into plata values(190,4, 66,1, 920, to_date('05-08-2018', 'dd-mm-yyyy'));
insert into plata values(190,18, 61,3, 270, to_date('15-05-2020', 'dd-mm-yyyy'));
insert into plata values(190,4, 61,3, 270, to_date('12-03-2020', 'dd-mm-yyyy'));
insert into plata values(191,5, 65,2, 50,  to_date('05-12-2017', 'dd-mm-yyyy'));
insert into plata values(191,21, 65,1, 25, to_date('05-04-2020', 'dd-mm-yyyy'));
insert into plata values(192,17, 65,5, 250, to_date('29-12-2017', 'dd-mm-yyyy'));
insert into plata values(192,1, 63,1, 50, to_date('20-12-2017', 'dd-mm-yyyy'));
insert into plata values(192,14, 65,3, 150, to_date('21-11-2020', 'dd-mm-yyyy'));
insert into plata values(193,18, 63,1, 315,  to_date('05-02-2020', 'dd-mm-yyyy'));
insert into plata values(193,16, 61,2, 630,  to_date('15-12-2017', 'dd-mm-yyyy'));
insert into plata values(193,10, 61, 1, 315,  to_date('15-01-2018', 'dd-mm-yyyy'));
insert into plata values(193,1, 61, 1, 315, to_date('13-01-2020', 'dd-mm-yyyy'));
insert into plata values(193,13, 64, 3, 975, to_date('15-01-2018', 'dd-mm-yyyy'));
insert into plata values(193,19, 62, 1, 315, to_date('15-01-2018', 'dd-mm-yyyy'));
insert into plata values(193,22, 61, 2, 630,  to_date('15-01-2018', 'dd-mm-yyyy'));
insert into plata values(193,21, 65, 1, 315, to_date('13-10-2020', 'dd-mm-yyyy'));
insert into plata values(195,7, 67,2, 48,  to_date('05-12-2017', 'dd-mm-yyyy'));
insert into plata values(195,1, 64,1, 24, to_date('16-06-2020', 'dd-mm-yyyy'));
insert into plata values(195,13, 63,5,115,  to_date('07-09-2020', 'dd-mm-yyyy'));
insert into plata values(195,7, 65,2, 48,  to_date('08-05-2020', 'dd-mm-yyyy'));
insert into plata values(195,4, 67,2, 48,  to_date('06-02-2020', 'dd-mm-yyyy'));
insert into plata values(197,8, 67,2, 450, to_date('05-12-2019', 'dd-mm-yyyy'));
insert into plata values(197,4, 64,1, 225, to_date('17-06-2020', 'dd-mm-yyyy'));
insert into plata values(198,16, 63,1, 90,to_date('15-12-2017', 'dd-mm-yyyy'));
insert into plata values(198,4, 67, 2, 180, to_date('10-08-2018', 'dd-mm-yyyy'));
insert into plata values(200,6, 62,2, 90, to_date('05-09-2017', 'dd-mm-yyyy'));
insert into plata values(200,11, 65,1, 45, to_date('07-12-2020', 'dd-mm-yyyy'));
insert into plata values(200,20, 61,2, 90, to_date('04-12-2019', 'dd-mm-yyyy'));
insert into plata values(200,20, 63,1, 45, to_date('04-11-2019', 'dd-mm-yyyy'));
insert into plata values(200,1, 61,3, 130, to_date('04-01-2020', 'dd-mm-yyyy'));
insert into plata values(200,5, 62,1, 45,  to_date('07-09-2020', 'dd-mm-yyyy'));
insert into plata values(200,13, 66,2, 90,  to_date('15-10-2020', 'dd-mm-yyyy'));
insert into plata values(200,9, 65,2, 90, to_date('08-04-2020', 'dd-mm-yyyy'));
insert into plata values(200,4, 62, 1, 45, to_date('15-09-2018', 'dd-mm-yyyy'));
insert into plata values(200,22, 66,1, 45, to_date('23-04-2020', 'dd-mm-yyyy'));
insert into plata values(200,17, 62,3, 130, to_date('05-12-2018', 'dd-mm-yyyy'));
insert into plata values(182,1,  62,2, 200, to_date('25-12-2020', 'dd-mm-yyyy'));
insert into plata values(182,21, 66,1, 100, to_date('25-12-2020', 'dd-mm-yyyy'));
insert into plata values(185,2, 61,3, 324, to_date('24-12-2020', 'dd-mm-yyyy'));
insert into plata values(192,2, 67,1, 50, to_date('22-12-2020', 'dd-mm-yyyy'));
insert into plata values(184,2, 61,1, 73, to_date('23-12-2020', 'dd-mm-yyyy'));
insert into plata values(183,3, 61,1, 225, to_date('22-12-2020', 'dd-mm-yyyy'));
insert into plata values(190,3, 63,2, 180, to_date('24-12-2020', 'dd-mm-yyyy'));
insert into plata values(187,13, 63,1, 95,  to_date('21-12-2020', 'dd-mm-yyyy'));
insert into plata values(192,13, 67,1, 50,  to_date('23-12-2020', 'dd-mm-yyyy'));
insert into plata values(181,21, 66,2, 220,  to_date('22-12-2020', 'dd-mm-yyyy'));
insert into plata values(182,21, 67,2 , 200,  to_date('25-12-2020', 'dd-mm-yyyy'));
insert into plata values(197,21, 63,1, 225,  to_date('24-12-2020', 'dd-mm-yyyy'));
insert into plata values(188,21, 62,1, 26,  to_date('21-12-2020', 'dd-mm-yyyy'));
insert into plata values(185,21, 65,2 , 216,  to_date('22-12-2020', 'dd-mm-yyyy'));
insert into plata values(183,21, 67,2 , 500,  to_date('22-12-2020', 'dd-mm-yyyy'));

--Costum

insert into costum values(181,'piele','XXL','Mos Craciun',30);
insert into costum values(182,'bumbac','XL','Mos Craciun',30);
insert into costum values(183,'sintetic','M','Mos Craciun',35);
insert into costum values(184,'catifea','S','Alba ca zapada',30);
insert into costum values(185,'bumbac','M','Alba ca zapada',30);
insert into costum values(186,'sintetic','S','Spiderman', 35);
insert into costum values(187,'bumbac','M','Spiderman',35);
insert into costum values(188,'bumbac','S','Doctor',30);
insert into costum values(189,'catifea','M','Doctor',30);
insert into costum values(190,'bumbac','XL','Doctor' ,30);
insert into costum values(191,'stofa','S','Craciunita',35);
insert into costum values(192,'sintetic','S','Rudolf',30);
insert into costum values(193,'sintetic','M','Rudolf', 30);
insert into costum values(194,'bumbac','L','Rudolf', 30);
insert into costum values(195,'bumbac','S','Ghiocel',30);
insert into costum values(196,'stofa','XL','Ghiocel',30);
insert into costum values(197,'sintetic','M','Minge', 30);
insert into costum values(198,'catifea','XL','Joker', 40);
insert into costum values(199,'bumbac','M','Joker' ,40);
insert into costum values(200,'piele','S','Joker',40);
insert into costum values(201,'sintetic','L','Cenusereasa',20);

--Croitor

insert into croitor values(330,'Dancu','Maria','0253277274');
insert into croitor values(331,'Nicolescu','Georgiana','0253287274');
insert into croitor values(332,'Voinea','Andrei','0753277274');
insert into croitor values(333,'Viteazu','Ilinca','0273277274');
insert into croitor values (334, 'Popescu', 'Mihnea','0768787098');
insert into croitor values (335, 'Ionescu', 'Mircea','0768757598');

--Work_on

insert into work_on values(181, 330,5);
insert into work_on values(182, 332,10);
insert into work_on values(183, 331,11);
insert into work_on values(184, 331,2);
insert into work_on values(185, 332,5);
insert into work_on values(186, 333,11);
insert into work_on values(187, 330,8);
insert into work_on values(188, 332,9);
insert into work_on values(189, 333,10);
insert into work_on values(190, 332,4);
insert into work_on values(191, 333,2);
insert into work_on values(192, 332,5);
insert into work_on values(193, 331,12);
insert into work_on values(194, 331,11);
insert into work_on values(195, 333,12);
insert into work_on values(196, 331,4);
insert into work_on values(197, 330,6);
insert into work_on values(198, 333,6);
insert into work_on values(199, 333,4);
insert into work_on values(200, 330,2);
insert into work_on values(201, 334,5);
insert into work_on values(201, 335,5);

--6
-- Managerul magazinului doreste sa ofere un discount pentru urmatoarea achizitie ale clientilor fideli ai acestui magazin.
--Un client fidel este acela care a cumparat macar 3 articole in a doua jumatate a anului 2020.

create or replace procedure procedura_6 
 is
    type c_recoard is record
        (cod_client client_magazin.id_client%type,
         nume_client client_magazin.nume%type,
         prenume_client client_magazin.prenume%type);
    type c_cod is varray(30) of c_recoard;
    cod c_cod;
  begin 
    select id_client, nume, prenume
    bulk collect into cod
    from ( select distinct cm.id_client, cm.nume, cm.prenume
            from client_magazin cm join plata p on(cm.id_client=p.id_client)
            where data_plata between '01-JUN-2020' and '30-DEC-2020'
            GROUP by cm.id_client, cm.nume, cm.prenume
            having count(p.id_client)>=3);
    if cod.count!=0 then
            for i in cod.first..cod.last loop
                update client_magazin cm
                set discount=5
                where cm.id_client=cod(i).cod_client;
                dbms_output.put_line('Clientul '||cod(i).nume_client||' ' || cod(i).prenume_client||' v-a primi discountul pentru urmatoarea achizitie');
            end loop;
    else
        dbms_output.put_line('Niciun client nu va primi discount!');
    end if;
end procedura_6;
/
begin
procedura_6;
end;
/
--7
--Croitorii acestui magazin doresc sa personalizeze cate un ecuson pentru clientii pe care i-au avut in luna decembrie.
--Astfel ei au nevoie sa cunoasca ce clienti le-au cumparat costumele lor personale.

create or replace procedure procedura_7 (v_croitor_nume croitor.nume%type, v_croitor_prenume croitor.prenume%type)
    is
    cursor croitor_cursor(nume_parametru croitor.nume%type, prenume_parametru croitor.prenume%type) is
       select distinct cm.nume, cm.prenume, cr.nume, cr.prenume
       from client_magazin cm join plata p on cm.id_client=p.id_client
                               join costum c on c.id_costum=p.id_costum
                               join work_on wo on wo.id_costum=c.id_costum
                               join croitor cr on cr.id_croitor=wo.id_croitor
       where p.data_plata BETWEEN '01-DEC-20' and '31-DEC-20' and cr.nume=nume_parametru and cr.prenume=prenume_parametru;
   
    client_nume client_magazin.nume%type;
    client_prenume client_magazin.prenume%type;
   
    croitor_nume croitor.nume%type;
    croitor_prenume croitor.prenume%type;
begin
                open croitor_cursor(v_croitor_nume, v_croitor_prenume); 
                dbms_output.put_line(' Clientii sunt: ');
                loop 
                    fetch croitor_cursor into client_nume, client_prenume, croitor_nume, croitor_prenume;
                    exit when croitor_cursor%NOTFOUND; 
                    dbms_output.put_line(chr(9)||client_nume||' '||client_prenume);
                end loop;
            	close croitor_cursor;
END procedura_7;
/  
begin
procedura_7('Voinea','Andrei');
end;
/

--8
-- Managerul magazinului doeste sa afle cate costume mai trebuie sa faca fiecare croitor astfel incat sa inceapa anul 2021 cu stocul plin.
-- Astfel pentru un croitor dat sa se afiseze urmatoarele informatii despre cosumele pe care trebuie sa le mai faca croitorii ca stocul sa fie iar plin: numar de bucati, ce costum(personajul) si marimea

create or replace function nr_costume
    ( v_croitor_nume croitor.nume%type, v_croitor_prenume croitor.prenume%type)
return varchar2 is
   rezultat varchar2(5000):='';
   numecroitor varchar2(500):='';
   rezultat2 varchar2(500):='';
   nrordine number(20):=0;
   cursor croitor_cursor is 
        select cr.nume, cr.prenume, wo.id_costum 
        from croitor cr join work_on wo using (id_croitor) 
        order by cr.nume, cr.prenume; 
         v_nume varchar2(50);
    v_prenume varchar(50);
    v_wo_id number(20);
         cursor costum_cursor is 
            with cantitate_costume_date as(select p.id_costum, sum(p.cantitate) suma 
                                    from plata p 
                                    where data_plata>'01-Jan-2020'
                                    group by p.id_costum 
                                    order by p.id_costum) 
            select suma, c.personaj, c.material, c.id_costum 
            from costum c join (select * 
                                from cantitate_costume_date) t on c.id_costum=t.id_costum;         
    v_cantitateramasa number(10);
    v_personaj varchar2(50);
    v_material varchar2(50);
    v_c_id number(20);
    cantitate_totala number:=0;
begin
    open croitor_cursor;
    loop
        fetch croitor_cursor into  v_nume, v_prenume, v_wo_id;
        exit when croitor_cursor%notfound;
        if  v_nume=v_croitor_nume and v_prenume=v_croitor_prenume then 
            rezultat:=v_croitor_nume||' '||v_croitor_prenume||chr(10);
            open costum_cursor;
            loop
                fetch costum_cursor into  v_cantitateramasa, v_personaj, v_material, v_c_id;
                exit when costum_cursor%notfound;
                    if v_wo_id=v_c_id then
                        nrordine:=nrordine+1;
                        cantitate_totala:=cantitate_totala+v_cantitateramasa;
                            numecroitor:= to_char(numecroitor)||chr(9)||nrordine||'. '||to_char(v_cantitateramasa)||' bucati de '|| v_personaj||', material: '||v_material||chr(10);
                    end if;
                if nrordine>3 then
                open costum_cursor;
                loop
                   fetch costum_cursor into  v_cantitateramasa, v_personaj, v_material, v_c_id;
                     exit when costum_cursor%notfound;
                    if v_wo_id=v_c_id then
                        cantitate_totala:=cantitate_totala+v_cantitateramasa;
                    end if;
                    rezultat:=rezultat||'Cantitatea totala '||cantitate_totala||chr(10);
                   end loop;
                close costum_cursor;
                end if;
            end loop;
            close costum_cursor;
        end if;
    end loop;
    close croitor_cursor;
    if v_cantitateramasa is null or v_personaj is null or v_material is null or v_c_id is null then
            raise no_data_found;
        end if;
        rezultat:=rezultat||numecroitor||chr(10);
    return rezultat;
    EXCEPTION
        WHEN no_data_found THEN
            return 'Nu exista croitor cu acest nume';
        when CURSOR_ALREADY_OPEN then
            return 'Ne pare rau, dar din pacate incercati sa deschideti un cursor care este deja deschis';
end nr_costume;
/
begin
    DBMS_OUTPUT.PUT_LINE('Lista cu costumele pe care trebuie sa le mai faca un anumit croitor');
    DBMS_OUTPUT.PUT_LINE(nr_costume('Viteazu','Ilinca'));
end;
/
begin
    DBMS_OUTPUT.PUT_LINE('Excetion- No_data_found');
    DBMS_OUTPUT.PUT_LINE(nr_costume('Popescu','Ion'));
end;
/
begin
    DBMS_OUTPUT.PUT_LINE('Excetion- CURSOR_ALREADY_OPEN');
    DBMS_OUTPUT.PUT_LINE(nr_costume('Dancu','Maria'));
end;
/
--9
-- Datorita faptuli ca cea mai cunoscuta sarbatoare de iarna, Craciunul, saptamanat 20.12. -25.12 este si cea mai aglomeata. Tinand cont de experienta din anul trecut
--managerul magazinului isi cheama toti angajatii la job in aceasta perioada. Acesta vrea sa le ofere cate un cadoul la finalul acestei saptamani, astfel el calculeaza un procent care reprezinta
--raportul dintre orele lucrate(70) si numarul de clienti. Sa se afiseze pentru un angajat cati clienti a avut, procentul obtinut, cat si adresa fiecaruia pentru a stii unde sa trimita cadourile.

create or replace procedure procedura_angajati
        (v_nume angajat.nume%type,
         v_prenume angajat.nume%type)
    is    
             rezultat varchar2(600):='';
            v_nume_angajat angajat.nume%type;
            v_prenume_angajat angajat.prenume%type;
            v_nume_ang angajat.nume%type;
            v_prenume_ang angajat.prenume%type;
            v_judet adresa.judet%type;
            v_localitate adresa.localitate%type;
            v_strada adresa.strada%type;
            v_numar adresa.numar%type;
            v_bloc adresa.blocul%type;
            v_etaj adresa.etaj%type;
            v_ap adresa.apartament%type;
            v_cod adresa.cod_postal%type;
            v_scara adresa.scara%type;
            v_id_angajat angajat.id_angajat%type;
            numar_clienti varchar2(30);
            
            raport float(50):=0;
       
            type c_costum_croitor is record
            (c_costum_personaj costum.personaj%type,
            c_costum_marime costum.marime%type,
            c_croitor_nume croitor.nume%type,
            c_croitor_prenume croitor.prenume%type);
            type c_cost_croi is varray(30) of c_costum_croitor;
            croitor_costum c_cost_croi;
begin
      
  select an.id_angajat, an.nume, an.prenume, ad.judet, ad.localitate, ad.strada, ad.numar, ad.blocul, ad.scara, ad.etaj, ad.apartament, ad.cod_postal, nvl(case 
    when count(*)!=0 then (select count(*)
                                                                        from plata p 
                                                                         where p.id_angajat=an.id_angajat and data_plata between '20-dec-2020' and '25-dec-2020'
                                                                        group by p.id_angajat)
        else 0
    end,0) "Numar clienti"
    into v_id_angajat, v_nume_angajat, v_prenume_angajat, v_judet, v_localitate, v_strada, v_numar, v_bloc, v_scara, v_etaj, v_ap, v_cod, numar_clienti
    from plata p join angajat an on (p.id_angajat=an.id_angajat)
                join adresa ad on (ad.id_adresa=an.id_adresa)
    where an.nume=v_nume and an.prenume=v_prenume
    group by an.id_angajat,  an.nume, an.prenume,ad.judet, ad.localitate, ad.strada, ad.numar, ad.blocul, ad.scara, ad.etaj, ad.apartament, ad.cod_postal
    order by id_angajat;

    raport:=70/numar_clienti;
    
    select personaj, marime, nume, prenume
    bulk collect into croitor_costum
    from (select cs.personaj, cs.marime, cr.nume, cr.prenume
            from costum cs join work_on wo on cs.id_costum=wo.id_costum
                            join croitor cr on cr.id_croitor=wo.id_croitor
                            join plata p on p.id_costum=cs.id_costum
            where data_plata between '20-dec-2020' and '25-dec-2020' and id_angajat=v_id_angajat);
   if croitor_costum.count<>0 then
    
        if v_bloc is not null then
            
             dbms_output.put_line('Angajatul '||v_nume_angajat||' ' ||v_prenume_angajat||' a avut '||numar_clienti||' clienti, astfel obtinand un procent de '||round(raport,3));
             dbms_output.put_line('Adresa la care locuieste este: cod postal'||v_cod||', judet'||v_judet||', loc. '||v_localitate||', str. '||v_strada||', nr. '||v_numar||', bl. '||v_bloc||', et. '||v_etaj||', ap. '||v_ap);
             if croitor_costum.count=1 then
                 dbms_output.put_line('Costumul vandut de acesta este: ');
             else
                 dbms_output.put_line('Costumele vandute de acesta sunt: ');
             end if;
             for i in croitor_costum.first..croitor_costum.last loop
                dbms_output.put_line(chr(9)||'-'||croitor_costum(i).c_costum_personaj||'-'||croitor_costum(i).c_costum_marime||' facut de croitorul '||croitor_costum(i).c_croitor_nume||' '||croitor_costum(i).c_croitor_prenume);
            end loop;
       else
             dbms_output.put_line('Angajatul '||v_nume_angajat||' ' ||v_prenume_angajat||' a avut '||numar_clienti||' clienti, astfel obtinand un procent de '||round(raport,3));
             dbms_output.put_line('Adresa la care locuieste este: cod postal'||v_cod||', judet'||v_judet||', loc. '||v_localitate||', str. '||v_strada||', nr. '||v_numar);
             if croitor_costum.count=1 then
                dbms_output.put_line('Costumul vandut de acesta sunt: ');
             else
                dbms_output.put_line('Costumele vandute de acesta sunt: ');
            end if;
             for i in croitor_costum.first..croitor_costum.last loop
                dbms_output.put_line(chr(9)||'-'||croitor_costum(i).c_costum_personaj||'-'||croitor_costum(i).c_costum_marime||' facut de croitorul '||croitor_costum(i).c_croitor_nume||' '||croitor_costum(i).c_croitor_prenume);
             end loop;
        end if;
 end if;
EXCEPTION
    WHEN no_data_found THEN
     dbms_output.put_line('Nu exista angajati cu numele dat');
    WHEN zero_divide THEN
    dbms_output.put_line('Ne pare rau, dar acest angajat nu a avut niciun client');
END procedura_angajati;
/
BEGIN
 dbms_output.put_line(chr(9)||'Exita acest angajat si sta la casa');
procedura_angajati('Popescu','Karina');
END;
/
BEGIN
 dbms_output.put_line(chr(9)||'Exita acest angajat si sta la bloc');
procedura_angajati('Niculete','Andrei');
END;
/
BEGIN
 dbms_output.put_line(chr(9)||'NO_DATA_FOUND');
procedura_angajati('Popescu','Dan');
END;
/
BEGIN
 dbms_output.put_line(chr(9)||'ZERO_DIVIDE');
procedura_angajati('Stancu','Rebeca');
END;
/
--10
--Managerul magazinului vrea sa se asigure ca nu vor avea loc modificari asupra tabelului "PLATA" inafara orelor de munca. Astfel daca cineva lucreaza inafara orelor de munca, se va afisa un mesaj coresponzator
--Program ore de munca: Luni-Vineri 8-14, Sambata 8-14, Duminica 8-12. In ziua de 31.12 si 01.01 nu se lucreaza

create or replace trigger triger_plata
    before insert or update or delete on plata
begin
    if (to_char(sysdate,'d')=7 and to_char(sysdate,'hh24') not between 8 and 14) or
       (to_char(sysdate,'d')=1 and to_char(sysdate,'hh24') not between 8 and 12) or
        ((to_char(sysdate,'d')=2 or to_char(sysdate,'d')=3 or to_char(sysdate,'d')=4 or to_char(sysdate,'d')=5 or to_char(sysdate,'d')=6) and to_char(sysdate,'hh24') not between 8 and 17) or
       ((to_char(sysdate,'mm/dd')='12/31') or (to_char(sysdate,'mm/dd')='01/01')) then
     raise_application_error(-20001,'Tabelul nu poate fi actualizat, va aflati in afara orelor de munca, va rugam sa va bucurati de timpul liber');
    end if;
end;
/
insert into plata values(200,19, 62,1, 270, to_date('15-05-2020', 'dd-mm-yyyy'));

--11
 -- Data angajarii unui salariat nu se poate modifica. Numarul de telefon trebuie sa aiba 10 cifre sis a inceapa cu 0, ca sa fie corespunzator Romaniei.
create or replace trigger triger_angajat
    before update of data_angajare, telefon on angajat
    for each row
begin
    if (:new.data_angajare <>:old.data_angajare) then
     raise_application_error(-20001,'Nu puteti schimba data angajaraii unui salariat');
    end if;
    if length(:new.telefon)<>10 then
        raise_application_error(-20002,'Numarul de telefon nu contine 10 cifre');
     end if;
       if length(:new.telefon)=10 and substr(:new.telefon,1,1)!='0' then
        raise_application_error(-20002,'Numarul de telefon trebuie sa inceapa cu 0');
        end if;
end;
/
UPDATE angajat
SET data_angajare= '21-DEC-2021';
/
UPDATE angajat
SET telefon='9768754321'
where nume='Gama' and prenume='Catalin';
/
UPDATE angajat
SET telefon='089768754321'
where nume='Gama' and prenume='Catalin';
/
--12
-- Stim ca un costum poate suferii mai multe modificari si la o modificare poate lucra doar un croiotor.
--Sa se retina informatii despre evenimentele petrecute cu ajutorul unui trigger.
--Sa se creze tabelul modificare_croitor. 
--Sa se stearga entitatea gravitatea_modificarii, urmand sa se stearga si acest tabel
create table modificari
(
   
    eveniment varchar2(30),
    nume_obiect varchar2(30),
    data        date
);
create or replace trigger modificari_trigger
    after create or drop or alter on schema
begin 
    insert into modificari
    values (SYS.SYSEVENT, SYS.DICTIONARY_OBJ_NAME, SYSDATE);
    dbms_output.put_line('Tip eveniment: '||SYS.SYSEVENT);
     dbms_output.put_line('Nume obiect: '||SYS.DICTIONARY_OBJ_NAME);
    dbms_output.put_line('Data relizarii evenimentului: '||SYSDATE);
end;
/

create table modificare_croitor(
 id_modificare number(20) not null PRIMARY KEY,
 id_croitor number(10) not null,
 gravitatea_modificarii number(20) not null,
 tip_modificari VARCHAR2(30) not null,
 CONSTRAINT FK_id_croitor FOREIGN KEY(id_croitor) references
    croitor(Id_croitor)

 );

  alter table  modificare_croitor
 drop column gravitatea_modificarii;

 drop table modificare_croitor;
--13
create or replace package pachet_obiecte as
   --6
   procedure procedura_6;
   --7
   procedure procedura_7 (v_croitor_nume croitor.nume%type, v_croitor_prenume croitor.prenume%type);
   --8
   function nr_costume ( v_croitor_nume croitor.nume%type, v_croitor_prenume croitor.prenume%type) return varchar2;
   --9
   procedure procedura_angajati(v_nume angajat.nume%type,v_prenume angajat.nume%type);



end pachet_obiecte;
/
create or replace package body pachet_obiecte as
    --6
   procedure procedura_6 
 is
    type c_recoard is record
        (cod_client client_magazin.id_client%type,
         nume_client client_magazin.nume%type,
         prenume_client client_magazin.prenume%type);
    type c_cod is varray(30) of c_recoard;
    cod c_cod;
  begin 
    select id_client, nume, prenume
    bulk collect into cod
    from ( select distinct cm.id_client, cm.nume, cm.prenume
            from client_magazin cm join plata p on(cm.id_client=p.id_client)
            where data_plata between '01-JUN-2020' and '30-DEC-2020'
            GROUP by cm.id_client, cm.nume, cm.prenume
            having count(p.id_client)>=3);
    if cod.count!=0 then
            for i in cod.first..cod.last loop
                update client_magazin cm
                set discount=5
                where cm.id_client=cod(i).cod_client;
                dbms_output.put_line('Clientul '||cod(i).nume_client||' ' || cod(i).prenume_client||' v-a primi discountul pentru urmatoarea achizitie');
            end loop;
    else
        dbms_output.put_line('Niciun client nu va primi discount!');
    end if;
end procedura_6;

   --7
  procedure procedura_7 (v_croitor_nume croitor.nume%type, v_croitor_prenume croitor.prenume%type)
    is
    cursor croitor_cursor(nume_parametru croitor.nume%type, prenume_parametru croitor.prenume%type) is
       select distinct cm.nume, cm.prenume, cr.nume, cr.prenume
       from client_magazin cm join plata p on cm.id_client=p.id_client
                               join costum c on c.id_costum=p.id_costum
                               join work_on wo on wo.id_costum=c.id_costum
                               join croitor cr on cr.id_croitor=wo.id_croitor
       where p.data_plata BETWEEN '01-DEC-20' and '31-DEC-20' and cr.nume=nume_parametru and cr.prenume=prenume_parametru;
   
    client_nume client_magazin.nume%type;
    client_prenume client_magazin.prenume%type;
   
    croitor_nume croitor.nume%type;
    croitor_prenume croitor.prenume%type;
begin
                open croitor_cursor(v_croitor_nume, v_croitor_prenume); 
                dbms_output.put_line(' Clientii sunt: ');
                loop 
                    fetch croitor_cursor into client_nume, client_prenume, croitor_nume, croitor_prenume;
                    exit when croitor_cursor%NOTFOUND; 
                    dbms_output.put_line(chr(9)||client_nume||' '||client_prenume);
                end loop;
            	close croitor_cursor;
END procedura_7;


   --8
   function nr_costume
    ( v_croitor_nume croitor.nume%type, v_croitor_prenume croitor.prenume%type)
return varchar2 is
   rezultat varchar2(5000):='';
   numecroitor varchar2(500):='';
   rezultat2 varchar2(500):='';
   nrordine number(20):=0;
   cursor croitor_cursor is 
        select cr.nume, cr.prenume, wo.id_costum 
        from croitor cr join work_on wo using (id_croitor) 
        order by cr.nume, cr.prenume; 
         v_nume varchar2(50);
    v_prenume varchar(50);
    v_wo_id number(20);
         cursor costum_cursor is 
            with cantitate_costume_date as(select p.id_costum, sum(p.cantitate) suma 
                                    from plata p 
                                    where data_plata>'01-Jan-2020'
                                    group by p.id_costum 
                                    order by p.id_costum) 
            select suma, c.personaj, c.material, c.id_costum 
            from costum c join (select * 
                                from cantitate_costume_date) t on c.id_costum=t.id_costum;         
    v_cantitateramasa number(10);
    v_personaj varchar2(50);
    v_material varchar2(50);
    v_c_id number(20);
    cantitate_totala number:=0;
begin
    open croitor_cursor;
    loop
        fetch croitor_cursor into  v_nume, v_prenume, v_wo_id;
        exit when croitor_cursor%notfound;
        if  v_nume=v_croitor_nume and v_prenume=v_croitor_prenume then 
            rezultat:=v_croitor_nume||' '||v_croitor_prenume||chr(10);
            open costum_cursor;
            loop
                fetch costum_cursor into  v_cantitateramasa, v_personaj, v_material, v_c_id;
                exit when costum_cursor%notfound;
                    if v_wo_id=v_c_id then
                        nrordine:=nrordine+1;
                        cantitate_totala:=cantitate_totala+v_cantitateramasa;
                            numecroitor:= to_char(numecroitor)||chr(9)||nrordine||'. '||to_char(v_cantitateramasa)||' bucati de '|| v_personaj||', material: '||v_material||chr(10);
                    end if;
                if nrordine>3 then
                open costum_cursor;
                loop
                   fetch costum_cursor into  v_cantitateramasa, v_personaj, v_material, v_c_id;
                     exit when costum_cursor%notfound;
                    if v_wo_id=v_c_id then
                        cantitate_totala:=cantitate_totala+v_cantitateramasa;
                    end if;
                    rezultat:=rezultat||'Cantitatea totala '||cantitate_totala||chr(10);
                   end loop;
                close costum_cursor;
                end if;
            end loop;
            close costum_cursor;
        end if;
    end loop;
    close croitor_cursor;
    if v_cantitateramasa is null or v_personaj is null or v_material is null or v_c_id is null then
            raise no_data_found;
        end if;
        rezultat:=rezultat||numecroitor||chr(10);
    return rezultat;
    EXCEPTION
        WHEN no_data_found THEN
            return 'Nu exista croitor cu acest nume';
        when CURSOR_ALREADY_OPEN then
            return 'Ne pare rau, dar din pacate incercati sa deschideti un cursor care este deja deschis';
end nr_costume;


    --9
    procedure procedura_angajati
        (v_nume angajat.nume%type,
         v_prenume angajat.nume%type)
    is    
             rezultat varchar2(600):='';
            v_nume_angajat angajat.nume%type;
            v_prenume_angajat angajat.prenume%type;
            v_nume_ang angajat.nume%type;
            v_prenume_ang angajat.prenume%type;
            v_judet adresa.judet%type;
            v_localitate adresa.localitate%type;
            v_strada adresa.strada%type;
            v_numar adresa.numar%type;
            v_bloc adresa.blocul%type;
            v_etaj adresa.etaj%type;
            v_ap adresa.apartament%type;
            v_cod adresa.cod_postal%type;
            v_scara adresa.scara%type;
            v_id_angajat angajat.id_angajat%type;
            numar_clienti varchar2(30);
            
            raport float(50):=0;
       
            type c_costum_croitor is record
            (c_costum_personaj costum.personaj%type,
            c_costum_marime costum.marime%type,
            c_croitor_nume croitor.nume%type,
            c_croitor_prenume croitor.prenume%type);
            type c_cost_croi is varray(30) of c_costum_croitor;
            croitor_costum c_cost_croi;
begin
      
  select an.id_angajat, an.nume, an.prenume, ad.judet, ad.localitate, ad.strada, ad.numar, ad.blocul, ad.scara, ad.etaj, ad.apartament, ad.cod_postal, nvl(case 
    when count(*)!=0 then (select count(*)
                                                                        from plata p 
                                                                         where p.id_angajat=an.id_angajat and data_plata between '20-dec-2020' and '25-dec-2020'
                                                                        group by p.id_angajat)
        else 0
    end,0) "Numar clienti"
    into v_id_angajat, v_nume_angajat, v_prenume_angajat, v_judet, v_localitate, v_strada, v_numar, v_bloc, v_scara, v_etaj, v_ap, v_cod, numar_clienti
    from plata p join angajat an on (p.id_angajat=an.id_angajat)
                join adresa ad on (ad.id_adresa=an.id_adresa)
    where an.nume=v_nume and an.prenume=v_prenume
    group by an.id_angajat,  an.nume, an.prenume,ad.judet, ad.localitate, ad.strada, ad.numar, ad.blocul, ad.scara, ad.etaj, ad.apartament, ad.cod_postal
    order by id_angajat;

    raport:=70/numar_clienti;
    
    select personaj, marime, nume, prenume
    bulk collect into croitor_costum
    from (select cs.personaj, cs.marime, cr.nume, cr.prenume
            from costum cs join work_on wo on cs.id_costum=wo.id_costum
                            join croitor cr on cr.id_croitor=wo.id_croitor
                            join plata p on p.id_costum=cs.id_costum
            where data_plata between '20-dec-2020' and '25-dec-2020' and id_angajat=v_id_angajat);
   if croitor_costum.count<>0 then
    
        if v_bloc is not null then
            
             dbms_output.put_line('Angajatul '||v_nume_angajat||' ' ||v_prenume_angajat||' a avut '||numar_clienti||' clienti, astfel obtinand un procent de '||round(raport,3));
             dbms_output.put_line('Adresa la care locuieste este: cod postal'||v_cod||', judet'||v_judet||', loc. '||v_localitate||', str. '||v_strada||', nr. '||v_numar||', bl. '||v_bloc||', et. '||v_etaj||', ap. '||v_ap);
             if croitor_costum.count=1 then
                 dbms_output.put_line('Costumul vandut de acesta este: ');
             else
                 dbms_output.put_line('Costumele vandute de acesta sunt: ');
             end if;
             for i in croitor_costum.first..croitor_costum.last loop
                dbms_output.put_line(chr(9)||'-'||croitor_costum(i).c_costum_personaj||'-'||croitor_costum(i).c_costum_marime||' facut de croitorul '||croitor_costum(i).c_croitor_nume||' '||croitor_costum(i).c_croitor_prenume);
            end loop;
       else
             dbms_output.put_line('Angajatul '||v_nume_angajat||' ' ||v_prenume_angajat||' a avut '||numar_clienti||' clienti, astfel obtinand un procent de '||round(raport,3));
             dbms_output.put_line('Adresa la care locuieste este: cod postal'||v_cod||', judet'||v_judet||', loc. '||v_localitate||', str. '||v_strada||', nr. '||v_numar);
             if croitor_costum.count=1 then
                dbms_output.put_line('Costumul vandut de acesta sunt: ');
             else
                dbms_output.put_line('Costumele vandute de acesta sunt: ');
            end if;
             for i in croitor_costum.first..croitor_costum.last loop
                dbms_output.put_line(chr(9)||'-'||croitor_costum(i).c_costum_personaj||'-'||croitor_costum(i).c_costum_marime||' facut de croitorul '||croitor_costum(i).c_croitor_nume||' '||croitor_costum(i).c_croitor_prenume);
             end loop;
        end if;
 end if;
EXCEPTION
    WHEN no_data_found THEN
     dbms_output.put_line('Nu exista angajati cu numele dat');
    WHEN zero_divide THEN
    dbms_output.put_line('Ne pare rau, dar acest angajat nu a avut niciun client');
END procedura_angajati;
end pachet_obiecte;
/
begin
      
      DBMS_OUTPUT.PUT_LINE(chr(9)||'Exercitiul 6');
        pachet_obiecte.procedura_6; 
       DBMS_OUTPUT.PUT_LINE(chr(10)||chr(9)||'Exercitiul 7');
      pachet_obiecte.procedura_7('Voinea','Andrei'); 
        DBMS_OUTPUT.PUT_LINE(chr(10)||chr(9)||'Exercitiul 8');
      DBMS_OUTPUT.PUT_LINE(chr(10)||'Primul exemplu- exceptie-no_data_found');
      DBMS_OUTPUT.PUT_LINE(chr(9)||pachet_obiecte.nr_costume('Popescu','Ion'));
       DBMS_OUTPUT.PUT_LINE('Al doilea exemplu- exceptie-CURSOR_ALREADY_OPEN');
      DBMS_OUTPUT.PUT_LINE(chr(9)||pachet_obiecte.nr_costume('Dancu','Maria'));
       DBMS_OUTPUT.PUT_LINE('Al treilea exemplu- exceptie-CURSOR_ALREADY_OPEN');
      DBMS_OUTPUT.PUT_LINE(chr(9)||pachet_obiecte.nr_costume('Viteazu','Ilinca'));
      
       DBMS_OUTPUT.PUT_LINE(chr(9)||'Exercitiul 9');
      DBMS_OUTPUT.PUT_LINE(chr(10)||'Primul exemplu- exceptie- no_data_found');
      pachet_obiecte.procedura_angajati('Popescu','Ion');
      DBMS_OUTPUT.PUT_LINE(chr(10)||'Al doilea exemplu-exceptie- zero_divide');
      pachet_obiecte.procedura_angajati('Stancu','Rebeca');
      DBMS_OUTPUT.PUT_LINE(chr(10)||'Al treilea exemplu');
      pachet_obiecte.procedura_angajati('Niculete','Andrei');
end;
/
--14
--Managerul magazinului isi doreste sa creasca stocul costumelor din magazine cu cat 5 costume. Sa se afiseze cate tipuri de costume trebuie sa realizeze fiecare croitor pentru inceperea anului 2021. Daca au mai mult de 4 tipuri de costume 
--de realizat, pot sa amane realizarea tipului de costum care ii ia cel mai mult timp.

create or replace package pachet_14
is
    --retinem cate zile petrece un croitor la facerea unui costum
        function croitor_durata(cod_id_costum work_on.id_costum%type) return number;
        function nume_croitor(id_croitor_f croitor.id_croitor%type) return varchar2;
        function detalii_costum(id_costum_f costum.id_costum%Type) return varchar2;
        
        function numar_croitor return number;
        procedure adaugare_costum_croitori_1  ;
        
end pachet_14;
/
create or replace package body pachet_14
is
    function croitor_durata(cod_id_costum work_on.id_costum%type) return number
    is numar_durata number;
    begin 
         select wo.durata
         into numar_durata
         from work_on wo  
         where wo.id_costum=cod_id_costum;
    return numar_durata;
    end croitor_durata;
    
     function nume_croitor(id_croitor_f croitor.id_croitor%type) return varchar2
     is nume_rez varchar2(200):='';
        nume_cr croitor.nume%type;
        prenume_cr croitor.prenume%type;
        
     begin 
        select cr.nume, cr.prenume
        into nume_cr, prenume_cr
        from croitor cr
        where id_croitor=id_croitor_f;
     nume_rez:=nume_rez||nume_cr||' '||prenume_cr;
         return nume_rez;
    end nume_croitor;
    
    function detalii_costum(id_costum_f costum.id_costum%Type) return varchar2
     is cost_rez varchar2(200):='';
        cost_per costum.personaj%type;
        cost_mat costum.material%type;
        
     begin 
        select cs.personaj, cs.material
        into cost_per,cost_mat 
        from costum cs
        where id_costum=id_costum_f;
     cost_rez:=cost_rez||cost_per||' facut din urmatorul material '||cost_mat;
         return cost_rez;
    end detalii_costum;
    
    function numar_croitor return number
        is 
            numar_croitori number;
    begin select count(id_croitor)
            into numar_croitori
          from croitor;
        return numar_croitori;
    end numar_croitor;
    
    procedure adaugare_costum_croitori_1 
    is
        type c_record is record(
        cod_id_costum costum.id_costum%type);
       type tablou_imbricat is table of costum.id_costum%type;
      
      type vector_croitori is varray(100) of tablou_imbricat;
      v_t_i tablou_imbricat:=tablou_imbricat();
      matrice vector_croitori:=vector_croitori();
   
      nr_cr number;
      variabila number;
      val_linie number;
      maxim number;
      codul_costumului number:=0;
    begin
        for i in 1..numar_croitor loop
         variabila :=329;
              variabila:=variabila+i;
            select c.id_costum
            bulk collect into v_t_i
            from costum c join work_on wo on c.id_costum=wo.id_costum
                 join croitor cr on cr.id_croitor=wo.id_croitor
            where cr.id_croitor=variabila;
          
           matrice.extend;
           matrice(i):=v_t_i;
       end loop;
        for i in 1..matrice.count loop
             val_linie:=matrice(i).count;
           --  DBMS_OUTPUT.PUT_LINE(val_linie);
              variabila :=329+i;
              maxim :=0;
                if val_linie>4 then
                    for j in 1..matrice(i).count loop  
                    --DBMS_OUTPUT.PUT(matrice(i)(j)||'      ');
                        if croitor_durata(matrice(i)(j))>maxim then
                             maxim:=croitor_durata(matrice(i)(j));
                             codul_costumului:=matrice(i)(j);
                        end if;
                 end loop;
                 DBMS_OUTPUT.PUT_LINE('Croitorul '||nume_croitor(variabila)||' are de realizat '||val_linie||' costume. Ii este permis sa intarzie cu costuml '||detalii_costum(codul_costumului));
                else
                     DBMS_OUTPUT.PUT_LINE('Croitorul '||nume_croitor(variabila)||' are de realizat mai putin de 4 tipuri de costume pana la inceputul anului 2021');
                end if;
        end loop;
      DBMS_OUTPUT.NEW_LINE;
      end adaugare_costum_croitori_1 ;  
    end pachet_14;
/
begin
    pachet_14.adaugare_costum_croitori_1 ;
end;
/


