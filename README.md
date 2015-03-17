LilyPond's tie formatting code needs serious improvements.  This repo contains
my research on this subject; I didn't put it in the issue tracker simply because
there's too much stuff here and it's expanded over time.

Start by compiling [`overview.ly`](overview.ly) to get a visual summary of tie problems.



Table of contents
-----------------

(and suggested reading order)

1. [`1-examples`](1-examples) - screenshots from real-life scores showing problematic
ties, interesting cases that should be considered, and hand-engraved examples.

2. [`2-suggested-shapes`](2-suggested-shapes) - manually tweaked examples showing how
some ties should look in my personal opinion.

3. [`3-tests`](3-tests) - LilyPond code snippets for testing.

4. [`4-spec`](4-spec) - thoughts on how the ties should be formatted and a spec draft.

[`ties - current function calls graph.odg`](ties - current function calls graph.odg)
is a manually created drawing in Open/LibreOffice format that may be helpful in
understanding how the current LilyPond tie code works.



A note about spacing
--------------------

Tie shape calculated by LilyPond depends heavily on the distance between tied notes.
If you have a score with an ugly tie and try to extract the input corresponding to
the tie, it may look completely different when compiled separately.  For example,
take a look at `1-examples/bad-ties/single-notes/bad-tie-4.png`:

![/1-examples/bad-ties/single-notes/bad-tie-4.png](/1-examples/bad-ties/single-notes/bad-tie-4.png)

If you compile just `{ a'~( a g'16) }` the tie will look correctly.

It wouldn't make sense to copy a long piece of input just to recreate the
context leading to a bad-looking tie.  That's why in the testing files we use
spacer rests, which allow us to simulate different distances between tied notes
(tieWaitForNote causes the tie to connect two notes even if there are spacer
rests between them).  Using spacer rests is equivalent to having differently
spaced notes.



TODOs
-----

There are a lot of parameters controlling tie formatting (see
["Tie" in LilyPond Internals Reference](http://lilypond.org/doc/v2.19/Documentation/internals/tie)
).  Unfortunately they aren't well documented.  It would be good to have a guide
demonstrating how they influence tie shape.  See also Karol Majewski's
[testing files](/3-tests/Karol/tie-karol.ly).
