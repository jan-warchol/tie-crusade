% When we want to check tie behaviour with
% different values of various properties,
% the most convenient way is to add these
% settings here (as this file should be
% included in every test file).
% Use \bookOutputSuffix to ensure that the
% pdf files will have a specific name.

% I recommend to check tie shapes
% with 3 staff sizes: 20, 14 and 8.
#(set-global-staff-size 20)

% \paper settings probably won't change:
\paper {
  ragged-right = ##t
  indent = 0
  paper-width = 150 \mm
  left-margin = 2 \mm
  right-margin = 2 \mm
}

\layout {
  \set tieWaitForNote = ##t

  % make sure that note spacing won't change (as we rely
  % on spacer rests, not explicit offsets, to put notes apart)
  \override Score.SpacingSpanner #'common-shortest-duration =
  #(ly:make-moment 1 1)

  % make sure barlines and accidentals don't interrupt the spacing
  \time 99/1
  \context {
    \Staff
    \remove Time_signature_engraver
    \remove Accidental_engraver
  }
}

br = { \bar "" \break }

tie-cps =
#(define-music-function (parser location coords) (list?)
   #{  \once \override Tie #'control-points = #coords  #})

tie-conf =
#(define-music-function (parser location conf) (list?)
   #{  \once \override TieColumn #'tie-configuration = #conf  #})

%{
% interesting settings from Karol Majewski:
\bookOutputSuffix "karol-settings"
\layout {
  \override Tie #'details #'center-staff-line-clearance = #0
  \override Tie #'details #'tip-staff-line-clearance = #0
  \override Tie #'details #'height-limit = #1.5
  \override Tie #'details #'intra-space-threshold = #0
  \override Tie #'details #'outer-tie-vertical-gap = #0
  \override Tie #'line-thickness = #0.75
  \override Tie #'thickness = #2
}
%}

%{
\bookOutputSuffix "outer-tie"
\layout {
  \override Tie #'details #'outer-tie-vertical-gap = #0
}
%}


