year(1900,1).
year(1901,1).
year(1902,1).
year(1903,1).
year(1904,2).
year(1905,1).
year(1906,1).
year(1907,1).
year(1908,2).
year(1909,1).
year(1910,1).
year(1911,1).
year(1912,2).
year(1913,1).
year(1914,1).
year(1915,1).
year(1916,2).
year(1917,1).
year(1918,1).
year(1919,1).
year(1920,2).
year(1921,1).
year(1922,1).
year(1923,1).
year(1924,2).
year(1925,1).
year(1926,1).
year(1927,1).
year(1928,2).
year(1929,1).
year(1930,1).
year(1931,1).
year(1932,2).
year(1933,1).
year(1934,1).
year(1935,1).
year(1936,2).
year(1937,1).
year(1938,1).
year(1939,1).
year(1940,2).
year(1941,1).
year(1942,1).
year(1943,1).
year(1944,2).
year(1945,1).
year(1946,1).
year(1947,1).
year(1948,2).
year(1949,1).
year(1950,1).
year(1951,1).
year(1952,2).
year(1953,1).
year(1954,1).
year(1955,1).
year(1956,2).
year(1957,1).
year(1958,1).
year(1959,1).
year(1960,2).
year(1961,1).
year(1962,1).
year(1963,1).
year(1964,2).
year(1965,1).
year(1966,1).
year(1967,1).
year(1968,2).
year(1969,1).
year(1970,1).
year(1971,1).
year(1972,2).
year(1973,1).
year(1974,1).
year(1975,1).
year(1976,2).
year(1977,1).
year(1978,1).
year(1979,1).
year(1980,2).
year(1981,1).
year(1982,1).
year(1983,1).
year(1984,2).
year(1985,1).
year(1986,1).
year(1987,1).
year(1988,2).
year(1989,1).
year(1990,1).
year(1991,1).
year(1992,2).
year(1993,1).
year(1994,1).
year(1995,1).
year(1996,2).
year(1997,1).
year(1998,1).
year(1999,1).

dateriddle(X) :-
    Acc is 8,
    Offset is 9,
    Start is 1900,
    dateriddle(Start,Offset,Acc,X).

dateriddle(Start,Offset,Acc,X):-
    Acc>0,
    year(Start,Z),
    NewOffset is Offset-Z,
    NewAcc is Acc-1,
    Next is Start+1,
    dateriddle(Next,NewOffset,NewAcc,X).
dateriddle(Start,Offset,Acc,X):-
    Acc=0, Offset<0,
    NewStart is Start-6,
    NewOffset is 9,
    NewAcc is 8,
    dateriddle(NewStart,NewOffset,NewAcc,X).
dateriddle(Start,Offset,Acc,X):-
    Acc=0, Offset=0,
    X is Start,
    write('January 27th '), write(X).




