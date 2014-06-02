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

\transpose d g

\new Staff \with { \override StaffSymbol #'line-count = #5 \remove Time_signature_engraver } { \time 9999/1 \set tieWaitForNote = ##t \tieUp
    \mark "1/4"
    d'4*1/4 ~ d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((1.5 . -0.42) (1.637 . -0.18) (2.015 . -0.18) (2.15 . -0.42))
        d'4 ~ \hideNotes d' \unHideNotes
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
        #'((1.5 . -0.5) (1.7 . -0.2) (2.1 . -0.2) (2.3 . -0.5))
        d'4 ~ \hideNotes d' \unHideNotes
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
        #'((1.554 . -0.55) (1.804 . -0.2) (2.337 . -0.2) (2.587 . -0.55))
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
        #'((1.554 . -0.55) (1.854 . -0.15) (2.639 . -0.15) (2.939 . -0.55))
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
        #'((1.554 . -0.6) (2.000 . -0.15) (3.174 . -0.15) (3.647 . -0.6))
        d'4*5/4 ~ \hideNotes d' \unHideNotes
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
        #'((1.554 . -0.6) (2.19 . -0.1) (3.759 . -0.1) (4.397 . -0.6))
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
        #'((1.554 . -0.7) (2.500 . -0.05) (4.883 . -0.05) (5.828 . -0.7))
        d'4*2 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(6.00 . 0)
        \once \override NoteHead #'extra-offset = #'(6.00 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "3"
    d'4 ~ s2 d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((1.554 . -0.45) (2.866 . 0.6) (7.752 . 0.6) (9.065 . -0.45))
        d'4*3 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(9.00 . 0)
        \once \override NoteHead #'extra-offset = #'(9.00 . 0) 
        d'4
      }
    >>
    \br
        
  }