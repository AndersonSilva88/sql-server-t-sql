SELECT COUNT(*) QTDE FROM Produtos WHERE Tamanho = 'M'

SELECT * FROM Produtos WHERE Tamanho = 'M'

SELECT SUM(Preco) PrecoTotal from Produtos

select sum(Preco) Preco_por_tamanho from Produtos where Tamanho = 'M'

select max(Preco) from Produtos

select min(Preco) from Produtos

select AVG(Preco) from Produtos

select upper(Nome) + ', Cor: ' + Cor + ' - '+ Genero Nome_Produto from Produtos

select * from Produtos

alter table Produtos add  DataCadastro dateTime2

--alter table Produtos drop column DataCadastro

update Produtos set DataCadastro = GETDATE()

select FORMAT(DataCadastro, 'dd-MM-yyyy HH:MM') Data from Produtos

select Tamanho, COUNT(*) Quantidade from Produtos where Tamanho <> '' group by Tamanho order by Quantidade desc

create table Enderecos (
	Id int primary key identity(1,1) not null,
	IdCliente int null,
	rua varchar(255),
	Bairro varchar(255) null,
	Cidade varchar(255) null,
	Estado char(2) null,

	constraint FK_Enderecos_Cliente foreign key (IdCliente) references Clientes(Id)
)

select * from Enderecos

insert into Enderecos values (4, 'Rua null', 'SQL', 'SqlServe', 'MS')

select * from 
Clientes inner join Enderecos on Clientes.Id = Enderecos.IdCliente where Clientes.Id = 4







