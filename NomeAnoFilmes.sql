--1

SELECT 
	Nome,
	Ano
FROM Filmes

--2

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano

--3

SELECT * FROM Filmes
WHERE Nome IN ('De volta para o Futuro')

--4 

SELECT * FROM Filmes
WHERE Ano IN (1997)

--5

SELECT * FROM Filmes
WHERE Ano > 2000

--6

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--7

SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY MAX(Duracao) DESC;

--8

SELECT 
	PrimeiroNome, 
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M';

--9


SELECT 
	PrimeiroNome, 
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


--10

SELECT Filmes.nome AS nome_filme, Generos.Genero AS nome_genero
FROM Filmes
JOIN FilmesGenero ON Filmes.id = FilmesGenero.Id
JOIN Generos ON FilmesGenero.IdGenero = Generos.id;

--11

SELECT Filmes.nome AS nome_filme, Generos.Genero AS nome_genero
FROM Filmes
JOIN FilmesGenero ON Filmes.id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.id
WHERE Generos.Genero = 'Mistério';

--12

SELECT Filmes.Nome AS NomeDoFilme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdAtor
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;













