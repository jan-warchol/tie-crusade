
ENGLISH
=======

LilyPond's tie formatting code needs serious improvements.  This folder
contains my notes and research that i've collected over many months of thinking.
Firstly, look at LilyPond's current problems in "demonstration.pdf".
You may take a look at "old examinations" to see a few suggested tie shapes.
Skim through "real-life examples" to get a better idea of the situation.
See my thoughts on the correct way of formatting ties in "specification.txt"

Technical explanation: tie shape in LilyPond depends heavily on the distance
between tied notes.  Because of that, if you extract a piece of input leading to
a bad tie, it may look completely different when compiled separately - take a
look at "real-life examples/bad ties/bad-tie-4.png": if you compile just
{ a'~( a g'16) } the tie will look correctly.
It wouldn't make sense to copy a long piece of input just to recreate the
context leading to a bad-looking tie.  That's why in the testing files we use
spacer rests, which allow us to simulate different distances between tied notes
(tieWaitForNote causes the tie to connect two notes even if there are spacer
rests between them).  Using spacer rests is equivalent to having differently
spaced notes.


POLSKI
======

Kod formatujacy łuki przedłużające (ties) w LilyPondzie wymaga poważnych poprawek.
W tym folderze są zebrane materiały, które zgromadziłem w ciągu wielu miesięcy.
Najpierw rzuć okiem na przykłady obecnych problemów w "demonstration.pdf".
Możesz zajrzeć do "old examinations" żeby zobaczyć kilka proponowanych rozwiązań.
Przejrzyj "real-life examples" żeby zobaczyć więcej przykładów z życia wziętych.
Zobacz, jak zamierzam podejść do rozwiązania czytając "specification.txt"

Wyjaśnienie techniczne: kształt łuku przedłużającego w LilyPondzie znacząco
zależy od odległości między połączonymi nutami.  Dlatego często jeśli wyizoluje
się fragment kodu ze źle wyglądającym łukiem, to skompilowany osobno będzie
wyglądał zupełnie inaczej - popatrz np. na "real-life examples/bad ties/bad-tie-4.png": jeśli skompilujesz samo { a'~( a'8 g'16) } to dostaniesz zupełnie dobry łuk.
Nie byłoby sensu kopiować dużego fragmentu nut tylko po to, żeby odtworzyć
kontekst prowadzący do źle wyglądającego łuku.  Dlatego używamy "pustych pauz",
które pozwalają symulować różne odległości między łączonymi nutami (parametr
tieWaitForNote powoduje, że nuta zostanie połączona łukiem z następną nutą,
nawet jeśli pomiędzy nimi jest pusta pauza).  Nuty oddzielone pustymi pauzami
dają taki sam efekt jak normalne nuty "rozciągnięte" przez inne okoliczności.


What needs to be done:
======================

All tie cases from real-life examples should be encoded in lilypond form

All tie parameters should be documented


Why not bug reports?
- too much
- evolves

track all possible parameters (from tie details, see Karol's testing files) and locate where in the code they're used.  I suppose that all this happens insidde tie-formatting-problem.cc, but maybe somewhere else.
