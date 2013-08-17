\paper { indent = 0  ragged-right = ##t paper-width = 10 \cm line-width = 9 \cm }

shapeTie =
  #(define-music-function (parser location offsets) (list?)
    #{
       \once \override Tie #'control-points = #(alter-curve $offsets)
    #})

#(define ((alter-curve offsets) grob)
   ;; get default control-points
   (let ((coords (ly:tie::calc-control-points grob))
         (n 0))
     ;; add offsets to default coordinates
     (define loop (lambda (n)
                    (set-car! (list-ref coords n)
                              (+ (list-ref offsets (* 2 n))
                                 (car (list-ref coords n))))
                    (set-cdr! (list-ref coords n)
                              (+ (list-ref offsets (1+ (* 2 n)))
                                 (cdr (list-ref coords n))))
                    (if (< n 3)
                        (loop (1+ n)))))
     ;; return altered coordinates
     (loop n)
     coords))

br = { \bar "" \break }

% #(set-global-staff-size 10)

\layout { \context { \Voice \override Tie #'direction = #UP } }

\transpose d a

\new Staff \with { \override StaffSymbol #'line-count = #5 \remove Time_signature_engraver } { \time 9999/1 \set tieWaitForNote = ##t
    \mark "1/4"
    d'4*1/4 ~ d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((1.504 . 0.22) (1.687 . 0.45) (2.065 . 0.45) (2.248 . 0.22))
        d'4*1/2 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(1.82 . 0)
        \once \override NoteHead #'extra-offset = #'(1.82 . 0) 
        d'4
      }
    >>
    \br 
    
    \mark "1/2"
    d'4*1/2 ~ d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((1.554 . 0.22) (1.752 . 0.52) (2.290 . 0.52) (2.488 . 0.22))
        d'4*1/2 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(2.11 . 0)
        \once \override NoteHead #'extra-offset = #'(2.11 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "3/4"
    d'4*3/4 ~ d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((1.554 . 0.22) (1.841 . 0.6) (2.551 . 0.6) (2.838 . 0.22))
        d'4 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(2.51 . 0)
        \once \override NoteHead #'extra-offset = #'(2.51 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "1"
    d'4 ~ d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((1.554 . 0.22) (1.951 . 0.67) (2.931 . 0.67) (3.328 . 0.22))
        d'4 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(3.00 . 0)
        \once \override NoteHead #'extra-offset = #'(3.00 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "5/4"
    d'4 ~ s16 d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((1.554 . 0.22) (2.118 . 0.77) (3.513 . 0.77) (4.078 . 0.22))
        d'4 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(3.75 . 0)
        \once \override NoteHead #'extra-offset = #'(3.75 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "3/2"
    d'4 ~ s8 d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((1.554 . 0.22) (2.186 . 0.82) (4.196 . 0.82) (4.828 . 0.22))
        d'4*3/2 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(4.5 . 0)
        \once \override NoteHead #'extra-offset = #'(4.5 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "2"
    d'4 ~ s4 d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((1.554 . 0.22) (2.322 . 0.87) (5.560 . 0.87) (6.328 . 0.22))
        d'4*2 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(6.00 . 0)
        \once \override NoteHead #'extra-offset = #'(6.00 . 0) 
        d'4
      }
    >>
    \br
    
  }