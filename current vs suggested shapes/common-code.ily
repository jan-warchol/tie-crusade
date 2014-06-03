\version "2.16.2"

% #(set-global-staff-size 10)

\paper {
  ragged-right = ##t
  indent = 0
  paper-width = 150 \mm
  left-margin = 2 \mm
  right-margin = 2 \mm
}

\layout {
  \set tieWaitForNote = ##t

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
