\include "../gobal-settings.ily"

br = { \bar "" \break }

tconf = #(define-music-function (parser location conf)
           (list?)
           #{ \once \override TieColumn #'tie-configuration = #conf #})

\layout {
  indent = 0
  ragged-right = ##t
  \set tieWaitForNote = ##t

  % make sure that note spacing won't change (as we rely
  % on spacer rests, not explicit offsets, to put notes apart)
  \override Score.SpacingSpanner #'common-shortest-duration =
  #(ly:make-moment 1 1)

  % make sure barlines don't interrupt the spacing
  \time 99/1
  \context { \Staff \remove Time_signature_engraver }
}

pattern = #(define-music-function
            (parser location samp)
            (ly:music?)
            #{
              \new Staff {
                %#samp        q4 s4*2
                #samp s8     q4 s4*2
                %#samp s4     q4 s4*2
                #samp s4*2   q4 s4*2
                #samp s4*4   q4 s4*2
                %#samp s4*8   q4 s4*2
                #samp s4*16  q4 s4*2
              }
            #})

\markup \justify {
  Dotted note in staffspace,
  no stafflines getting in the way:
}

\pattern <d'>4.~
% redundant \pattern { \stemDown <d'>4.~ }
% not interesting \pattern <g''>4.~
\pattern { \stemUp \tieUp <g''>4.~ }

\markup \justify {
  Dotted note in staffspace, surrounding stafflines:
}

\pattern <a'>4.~
\pattern <a'>4.^~
% redundant \pattern { \stemDown <a'>4._~ }
% not interesting \pattern { \stemDown <a'>4.^~ }

\markup \justify {
  Dotted note on staffline:
}

% obvious \pattern { <g'>4.~ }
\pattern { <g'>4.^~ }
% obvious \pattern { \stemDown <g'>4._~ }
\pattern { \stemDown <g'>4.^~ }
\pattern { \dotsDown <g'>4._~ }
% obvious \pattern { \dotsDown <g'>4.^~ }
% redundant \pattern { \dotsDown \stemDown <g'>4._~ }
% obvious \pattern { \dotsDown \stemDown <g'>4.^~ }

