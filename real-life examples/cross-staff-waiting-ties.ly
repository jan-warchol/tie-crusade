\version "2.17.20"
\language "english"

% from David Kastrup.  S

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
    tieWaitForNote = ##t
  }
  \context {
    \Staff
    \denies Voice
    \accepts TieVoice
    \defaultchild TieVoice
  }
  \context {
    \Voice
    \remove Tie_engraver
  }
  \context {
    \name "TieVoice"
    \type "Engraver_group"
    \consists Tie_engraver
    \accepts Voice
    \defaultchild Voice
  }
}

upper_notes = \relative d'' {
  <<
    { \voiceOne r8 <d e>8[-. a'-. e']-. a2-. }
    \new TieVoice = "piano_upper" { \voiceTwo s8 \crossStaff { <b,,, c e fs b>2.. } }
  >>
}

lower_notes = \relative d, {
  \clef bass
  \new TieVoice = "piano_lower" \new Voice {
  \tuplet 7/4 { \stemUp d32[ ~ a' ~ fs' ~ \change TieVoice = "piano_upper" \voiceTwo <b c> ~ e ~ fs ~ b] ~ }
      \change TieVoice = "piano_lower" \oneVoice <d,,, a' fs'>2.. }
}

\score {
  \new PianoStaff <<
    \new Staff \upper_notes
    \new Staff \lower_notes
  >>
}

%{ MORE INFO (see thread "crossStaff with tieWaitForNote" on -user:

Kieren wrote:
> David wrote:
>> It's sort of fishy
>
> What specifically is 'fishy' about it?

Well, it mixes a "TieVoice" into the hierarchy between Staff and Voice.
If you say something like
\new Staff << \new Voice ...
              \new Voice ...
           >>
then both Voices will end up in the same TieVoice by default.  So there
might be cases where you need an explicit \new TieVoice to get ties not
merged between voices.

>> but seemingly does the trick in this simple case.
>
> Definitely. I don't think any of the other cases in this score will be
> any different — if I run into any thing that your fishing doesn't fix,

I'm more worried about the things that the fishing fixes where you don't
want it...

Another approach (actually, pretty much the same but with a different
naming scheme) would be
%}


%{

\version "2.17"
\language "english"

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
    tieWaitForNote = ##t
  }
  \context {
    \Voice
    \name "SubVoice"
    \remove Tie_engraver
  }
  \context {
    \name "Voice"
    \type "Engraver_group"
    \consists Tie_engraver
    \accepts "SubVoice"
    \defaultchild "SubVoice"
  }
}

upper_notes = \relative d'' {
  <<
    { \voiceOne r8 <d e>8[-. a'-. e']-. a2-. }
    \new Voice = "piano_upper" { \voiceTwo s8 \crossStaff { <b,,, c e fs b>2.. } }
  >>
}

lower_notes = \relative d, {
  \clef bass
  \new Voice = "piano_lower" {
  \tuplet 7/4 { \stemUp d32[ ~ a' ~ fs' ~ \change Voice = "piano_upper" \voiceTwo <b c> ~ e ~ fs ~ b] ~ }
      \change Voice = "piano_lower" \oneVoice <d,,, a' fs'>2.. }
}

\score {
  \new PianoStaff <<
    \new Staff \upper_notes
    \new Staff \lower_notes
  >>
}
%}

%{
In spite of me saying "pretty much the same", it would appear that this
produces different output regarding the cross-staff angle, so one might
need to revise some more things.  Juggling around with Beam_engraver and
its ilk would suggest that LilyPond is not particularly well-prepared to
messing with the hierarchy too much: it would likely require some
experimentation to figure out just what group of engravers have to be
moved as one block.
%}
