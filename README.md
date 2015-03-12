
ENGLISH
=======

LilyPond's tie formatting code needs serious improvements.  This folder
contains my notes and research that i've collected over many months of thinking.
Firstly, look at LilyPond's current problems in `demonstration.ly`.
Skim through `real-life examples` to get a better idea of the situation.
You may take a look at `current vs suggested shapes` to see a few suggested tie shapes.
I've written down some thoughts on the correct way of formatting ties in `solution/`.

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



What needs to be done:
======================

All tie cases from real-life examples should be encoded in lilypond form

All tie parameters should be documented


Why not bug reports?
- too much
- evolves

track all possible parameters (from tie details, see Karol's testing files) and locate where in the code they're used.  I suppose that all this happens insidde tie-formatting-problem.cc, but maybe somewhere else.


Description of the subdirs:
- real-life examples: only images go here - screenshots or scans of scores from any sources (Lilypond, hand-engraved, other software if applicable)
- current vs suggested shapes - here you can learn how the ties should look like.  There are both systematic examinations and real-life cases here.
- tests - meant for checking how lilypond handles various cases.
- solution - notes on how the problem should be solved.

Possible categorization:
- single notes
- chords
- suspended noteheads
- polyphony
- dotted notes
- dotted chords
- ties avoiding accidentals/ ties moving too far vertically
- flags?