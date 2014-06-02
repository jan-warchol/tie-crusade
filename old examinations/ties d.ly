\version "2.16.2"

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
% black_notehead_width = 1,316178

\transpose d d
\new Staff \with { \override StaffSymbol #'line-count = #5 \remove Time_signature_engraver } { \time 9999/1 \set tieWaitForNote = ##t 
    \mark "1/4"
    d'4*1/4 ~ d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((0.822 . -3.278) (1.080 . -3.6) (1.717 . -3.6) (1.975 . -3.278))
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
        #'((0.9 . -3.254) (1.192 . -3.6) (1.917 . -3.6) (2.210 . -3.254))
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
        #'((1.05 . -3.191) (1.376 . -3.57) (2.178 . -3.57) (2.503 . -3.191))
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
        #'((1.205 . -3.1) (1.582 . -3.5) (2.512 . -3.5) (2.889 . -3.1))
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
        #'((1.328 . -3) (1.828 . -3.52) (3.063 . -3.52) (3.563 . -3))
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
        #'((1.328 . -3) (1.928 . -3.6) (3.713 . -3.6) (4.313 . -3))
        d'4*2 ~ \hideNotes d' \unHideNotes
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
        #'((1.328 . -3) (2.128 . -3.73) (5.013 . -3.73) (5.813 . -3))
        d'4*2 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(6.00 . 0)
        \once \override NoteHead #'extra-offset = #'(6.00 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "6"
    d'4 ~ s1 s4 d'4
    \bar "" 
    \shapeTie #'(-0.2 0   0 -0.2   -0.2 -0.2   0 0)
    d'4 ~ s1 s4 d'4
    \br
    
    \mark "8"
    d'4 ~ s1.. d'4
    \bar "" 
    \shapeTie #'(-0.2 0   0.1 -0.3   -0.3 -0.3   0 0)
    d'4 ~ s1.. d'4
    \br
    
    \mark "12"
    d'4 ~ s1 s1 s2. d'4
    \bar "" 
    \shapeTie #'(-0.2 0   0.2 -0.4   -0.4 -0.4   0 0)
    d'4 ~ s1 s1 s2. d'4
    \br
    
  }
  