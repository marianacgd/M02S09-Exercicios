CREATE DATABASE [Filmes]
GO
USE [Filmes]
GO
------------------------------------------------------------------------------

CREATE TABLE [dbo].[Filmes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](200) NOT NULL,
	[Ano] [int] NULL,
	[Duracao] [int] NULL,
 CONSTRAINT [PK_Filme] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
------------------------------------------------------------------------------ 
 
CREATE TABLE [dbo].[Atores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](200) NOT NULL,
	[Genero] [varchar](1) NULL,
 CONSTRAINT [PK_Ator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
-----------------------------------------------------------------------------
CREATE TABLE [dbo].[Generos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Genero] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
---------------------------------------------------------------------------------
CREATE TABLE [dbo].[Diretores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](200) NOT NULL,
	[Telefone] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Diretor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
---------------------------------------------------------------------------------
CREATE TABLE [dbo].[ElencoFilme](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdAtor] [int] NOT NULL,
	[IdFilme] [int] NOT NULL,
	[Papel] [varchar](100) NULL,
 CONSTRAINT [PK_ElencoFilme] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
------------------------------------------------------------------------------
 
CREATE TABLE [dbo].[FilmeGenero](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGenero] [int] NOT NULL,
	[IdFilme] [int] NOT NULL,
 CONSTRAINT [PK_FilmeGenero] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
-------------------------------------------------------------------------------
CREATE TABLE [dbo].[FilmeDiretor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdFilme] [int] NOT NULL,
	[IdDiretor] [int] NOT NULL,	
 CONSTRAINT [PK_FilmeDiretor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
-------------------------------------------------------------------------------

INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('James Stewart', 'M')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Deborah Kerr', 'F')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Peter OToole', 'M')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Robert DeNiro',  'M')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Harrison Ford', 'M')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES ('Stephen Baldwi',  'M')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES ('Jack Nicholso', 'M')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES ('Mark Wahlberg', 'M')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Woody Alle',  'M')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Claire Danes',  'F')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Tim Robbins', 'M')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Kevi Spacey',  'M')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Kate Winslet',  'F')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Robi Williams', 'M')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Jo Voight', 'M')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Ewa McGregor', 'M')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Christia Bale', 'M')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Maggie Gyllenhaal', 'F')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Dev Patel',  'M')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Sigourney',  'F')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('David Asto',  'M')
GO
INSERT [dbo].[Atores]([Nome], [Genero]) VALUES('Ali Asti', 'F')
GO
----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Vida Feliz', 1958, 128)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Os Inocentes', 1961, 100)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Lawrence da Arábia', 1962, 216)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('O Franco Atirador', 1978, 183)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Amadeus', 1984, 160)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Blade Runner', 1982, 117)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Há Esperança', 1999, 159)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Os Suspeitos', 1995, 106)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Chinatow', 1974, 130)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Rumo Sem Limites', 1997, 155)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Noivo Neurótico, Noiva Nervosa', 1977, 93)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Princesa Mononoke', 1997, 134)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Um Sonho de Liberdade', 1994, 142)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Beleza Americana', 1999, 122)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Titanic', 1997, 194)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Gênio Indomável', 1997, 126)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Amargo pesadelo', 1972, 109)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Trainspotting - Sem Limites', 1996, 94)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('O Grande Truque', 2006, 130)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Donnie Darko', 2001, 113)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Quem Quer Ser um Milionário?', 2008, 120)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Aliens, O Resgate', 1986, 137)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Velozes e Furiosos - 3', 2004, 118)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Avatar', 2009, 162)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Coração Valente', 1995, 178)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('Os Sete Samurais', 1954, 207)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('A Viagem de Maria', 2001, 125)
GO
INSERT [dbo].[Filmes]([Nome], [Ano], [Duracao]) VALUES ('De Volta para o Futuro', 1985, 116)
GO
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
INSERT [dbo].[Generos]([Genero]) VALUES ('Ação')
GO
INSERT [dbo].[Generos]([Genero]) VALUES ('Aventura')
GO
INSERT [dbo].[Generos]([Genero]) VALUES ('Animação')
GO
INSERT [dbo].[Generos]([Genero]) VALUES ('Biografia')
GO
INSERT [dbo].[Generos]([Genero]) VALUES ('Comédia')
GO
INSERT [dbo].[Generos]([Genero]) VALUES ('Crime')
GO
INSERT [dbo].[Generos]([Genero]) VALUES ('Drama')
GO
INSERT [dbo].[Generos]([Genero]) VALUES ('Horror')
GO
INSERT [dbo].[Generos]([Genero]) VALUES ('Musical')
GO
INSERT [dbo].[Generos]([Genero]) VALUES ('Mistério')
GO
INSERT [dbo].[Generos]([Genero]) VALUES ('Romance')
GO
INSERT [dbo].[Generos]([Genero]) VALUES ('Suspense')
GO
INSERT [dbo].[Generos]([Genero]) VALUES ('Guerra')
GO
--------------------------------------------------------------------------------- 
INSERT [dbo].[Diretores]([Nome], [Telefone]) VALUES ('Steven Spielberg', '(204) 9872-11212')
GO
INSERT [dbo].[Diretores]([Nome], [Telefone]) VALUES ('Stanley Kubrick', '(503) 3455-5521')
GO
INSERT [dbo].[Diretores]([Nome], [Telefone]) VALUES ('Alfred Hitchcock', '(987) 12093-44212')
GO
INSERT [dbo].[Diretores]([Nome], [Telefone]) VALUES ('Quentin Tarantino', '(203) 50044-4432')
GO
INSERT [dbo].[Diretores]([Nome], [Telefone]) VALUES ('Jean-Luc Godard', '(55) 2304-3345')
GO
INSERT [dbo].[Diretores]([Nome], [Telefone]) VALUES ('Sofia Coppola', '(201) 76544-3222')
GO
INSERT [dbo].[Diretores]([Nome], [Telefone]) VALUES ('Kathryn Bigelow', '(876) 7433-3232')
GO
INSERT [dbo].[Diretores]([Nome], [Telefone]) VALUES ('Jane Campion', '(55) 2212-0987')
GO
INSERT [dbo].[Diretores]([Nome], [Telefone]) VALUES ('Petra Costa', '(55) 9332-2232')
GO
INSERT [dbo].[Diretores]([Nome], [Telefone]) VALUES ('Sabrina Fidalgo', '(55) 5543-3211')
GO
--------------------------------------------------------------------------------- 
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (1,3)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (2,1)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (3,6)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (4,7)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (5,2)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (6,5)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (7,4)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (8,7)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (9,1)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (10,2)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (11,7)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (12,3)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (13,6)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (14,2)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (15,5)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (16,6)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (17,1)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (18,3)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (19,8)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (20,9)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (21,10)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (22,8)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (23,9)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (24,10)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (25,1)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (26,6)
GO
INSERT [dbo].[FilmeDiretor]([IdFilme], [IdDiretor]) VALUES (27,10)
GO
-------------------------------------------------------------------------------------------
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES (1, 22)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES (2, 17)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES (2, 3)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES (3, 12)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES (5, 11)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES (6, 8)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES (6, 13)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES (7, 26)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES (7, 28)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES ( 7, 18)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES ( 7, 21)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES ( 8, 2)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES ( 9, 23)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES ( 10, 7)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES ( 10, 27)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES ( 10, 1)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES ( 11, 14)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES ( 12, 6)
GO
INSERT [dbo].[FilmeGenero]([IdGenero], [IdFilme]) VALUES ( 13, 4)
GO
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (1, 1, 'John Scottie Ferguso')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (2, 2, 'Miss Giddens')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (3, 3, 'T.E. Lawrence')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (4, 4, 'Michael')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (6, 6, 'Rick Deckard')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (7, 8, 'McManus')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (9, 10, 'Eddie Adams')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (10, 11, 'Alvy Singer')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (11, 12, 'Sa')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (12, 13, 'Andy Dufresne')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (13, 14, 'Lester Burnham')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (14, 15, 'Rose DeWitt Bukater')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (15, 16, 'Sean Maguire')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (16, 17, 'Ed')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (17, 18, 'Rento')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (19, 20, 'Elizabeth Darko')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (20, 21, 'Older Jamal')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (21, 22, 'Ripley')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (13, 23, 'Bobby Dari')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (8, 9, 'J.J. Gittes')
GO
INSERT [dbo].[ElencoFilme]([IdAtor], [IdFilme], [Papel]) VALUES (18, 19, 'Alfred Borde')
GO
------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------  
ALTER TABLE [dbo].[FilmeDiretor] WITH CHECK ADD CONSTRAINT [FK__FilmeDiretor__Filme] FOREIGN KEY([IdFilme])
REFERENCES [dbo].[Filmes] ([Id])
GO
ALTER TABLE [dbo].[FilmeDiretor] CHECK CONSTRAINT [FK__FilmeDiretor__Filme]
GO
----------------------------------------------------------------------------------- 
ALTER TABLE [dbo].[FilmeDiretor] WITH CHECK ADD CONSTRAINT [FK__FilmeDiretor__Diretor] FOREIGN KEY([IdDiretor])
REFERENCES [dbo].[Diretores] ([Id])
GO
ALTER TABLE [dbo].[FilmeDiretor] CHECK CONSTRAINT [FK__FilmeDiretor__Diretor]
GO
-----------------------------------------------------------------------------------
ALTER TABLE [dbo].[ElencoFilme] WITH CHECK ADD CONSTRAINT [FK__ElencoFilme__Atores] FOREIGN KEY([IdAtor])
REFERENCES [dbo].[Atores] ([Id])
GO
ALTER TABLE [dbo].[ElencoFilme] CHECK CONSTRAINT [FK__ElencoFilme__Atores]
GO
-----------------------------------------------------------------------------------
ALTER TABLE [dbo].[ElencoFilme] WITH CHECK ADD CONSTRAINT [FK__ElencoFilme__Filmes] FOREIGN KEY([IdFilme])
REFERENCES [dbo].[Filmes] ([Id])
GO
ALTER TABLE [dbo].[ElencoFilme] CHECK CONSTRAINT [FK__ElencoFilme__Filmes]
GO
-----------------------------------------------------------------------------------
ALTER TABLE [dbo].[FilmeGenero] WITH CHECK ADD CONSTRAINT [FK__FilmeGenero__Filmes] FOREIGN KEY([IdFilme])
REFERENCES [dbo].[Filmes] ([Id])
GO
ALTER TABLE [dbo].[FilmeGenero] CHECK CONSTRAINT [FK__FilmeGenero__Filmes]
GO
-----------------------------------------------------------------------------------
ALTER TABLE [dbo].[FilmeGenero] WITH CHECK ADD CONSTRAINT [FK__FilmeGenero__Generos] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Generos] ([Id])
GO
ALTER TABLE [dbo].[FilmeGenero] CHECK CONSTRAINT [FK__FilmeGenero__Generos]
GO
