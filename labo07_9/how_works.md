Jak to działa? 

Skrypt sprawdz: Sprawdza istnienie użytkownika (pierwszy parametr) i wyświetla historię logowań użytkownika (polecenie last), pokazując daty logowań oraz liczbę logowań w danym dniu.

Skrypt polacz: Przyjmuje 3 parametry – nazwy plików plik1, plik2 i plik3. Sprawdza, czy:
* Przekazano 3 parametry.
* Pliki plik1 i plik2 istnieją, są niepuste, są plikami zwykłymi i mają prawo odczytu.
* Plik plik3 istnieje i ma prawo zapisu, lub jeśli nie istnieje, mamy prawo zapisu w bieżącym katalogu. Skrypt łączy zawartość plik1 i plik2 do plik3 lub zgłasza błąd, jeśli warunki nie są spełnione.

Skrypt info: Bez parametrów. Wyświetla liczbę katalogów i plików w bieżącym katalogu w formie:
* Plików: 7
* Katalogów: 3

Skrypt kopiuj: Kopiuje plik podany jako pierwszy argument do katalogów podanych jako kolejne argumenty. Sprawdza:
* Czy podano co najmniej dwa argumenty.
* Czy pierwszy argument to plik, a kolejne to katalogi. Jeśli któryś warunek nie jest spełniony, zgłasza błąd.