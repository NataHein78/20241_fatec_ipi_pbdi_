-- Active: 1712010644751@@127.0.0.1@5432

DO $$
DECLARE
	n1 INTEGER;
	n2 NUMERIC(3,1);
	n3 NUMERIC(3,1);
	n4 INTEGER;
	n5 INTEGER;
	a1 NUMERIC(4,2);
	b2 NUMERIC(4,2);
	c3 NUMERIC(3,1);
	
	
BEGIN
	-- 1 <= n < 100 (intervalor inteiro)
	n1:= 1 + floor(random() * 99);
	RAISE NOTICE 'N1: %', n1;
	-- 1 <= n < 10 ( intervalo real )
	n2 := 1 + random() * 9;
	RAISE NOTICE 'N2: %', n2;
	-- >= 20 <= 30 que converta em Fahrenheit
	n2:= 20 + floor(random() * 11);
	n3:= n2 * 1.8 + 32;
	RAISE NOTICE 'Grau Celcius em Fahrenheit : %º', n3;
	
	-- Programa gera 3 valores reais a,b,c e mostre o valor de delta.
	
	a1:= 1 + floor(random()*9);
	b2:= 1 + floor(random()*9);
	c3:= 1 + floor(random()*9);
	RAISE NOTICE 'a = %, b = % e c = %', a1, b2, c3;
	
	n2:= b2^2;
	
	RAISE NOTICE '∆ %', n2 - 4 * (a1 * c3) ;
	
	-- Gere um número inteiro e mostre a raiz cúbica de seu antecessor e a raiz
	-- cúbica de seu antecessor e a raiz quadrada de seu sucesor
	n1:= 1+ floor(random() * 9);
	RAISE NOTICE 'Valor inteiro aleatorio: %', n1;
	n1:= n1 - 1;
	n4:= ||/n1;
	RAISE NOTICE 'Antecessor ∛%', n4;
	n1:= n1 + 2;
	n4:= |/n1;
	RAISE NOTICE 'Sucessor √%', n4;
	

	-- Gere números reais de um terreno retangular, 
	n2:= 1 + random() * 9;
	n3:= 1 + random() * 9;
	
	RAISE NOTICE 'Valor real aleatorio: %', n2;
	RAISE NOTICE 'Valor real aleatorio: %', n3;
	
	-- Onde n1 sera a altura e n2 sera a base.
	
	--Gere um número inteiro entre [60:70]
	
	n1:= 60 + floor (random() * 10);
	
	RAISE NOTICE 'Valor inteiro aleátorio: %', n1;
	
	-- Armazerar o valor da arena em a1.

	a1:= n2 * n3;
	
	RAISE NOTICE 'Aréa total do terreno %', a1;
	n4:= a1 * n1;
	
	
	RAISE NOTICE 'Valor total do terreno é de: R$%',n4;
	
	
	-- Escreva um programa que gere um inteiro que representa o ano de nascimento de uma
	-- pessoa no intervalo de [1980: 2000]
	
	n1:= 1980 + floor(random() * 20);
	
	RAISE NOTICE 'Data de nascimento : %', n1;

	n4:= 2010 + floor(random() * 10);
	
	RAISE NOTICE 'Ano atual: %', n4;
	
	n5 := n4 - n1 ;
	
	RAISE NOTICE 'Ano atual : % anos', n5;
	
	
	
	
	
END;
$$