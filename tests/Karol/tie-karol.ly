\version "2.16.2"

\layout {
  \context {
    \Score
    \override LaissezVibrerTie #'details #'height-limit = #1.5 %				default:	best:
    \override LaissezVibrerTie #'details #'ratio = #0.333 %					default:	best:
    \override LaissezVibrerTie #'thickness = #2 %						default:	best:
    \override Tie #'details #'height-limit = #1.5 %						default: 0.75	best: 1.5
    \override Tie #'details #'ratio = #0.333 %							default: 0.333	best: 0.333
    \override Tie #'details #'between-length-limit = #1	%					default: 1	best: ?
    \override Tie #'details #'wrong-direction-offset-penalty = #10 %				default: 10	best: ?
    \override Tie #'details #'min-length = #3 %							default: 1	best: ?
    \override Tie #'details #'min-length-penalty-factor = #0 %					default: 1	best: ?
    \override Tie #'details #'center-staff-line-clearance = #0 %				default: 0.4	best: 0
    \override Tie #'details #'tip-staff-line-clearance = #0 %					default: 0.4	best: 0
    \override Tie #'details #'staff-line-collision-penalty = #0	%				default: 5	best: ?
    \override Tie #'details #'dot-collision-clearance = #0.25 %					default: 0.25	best: ?
    \override Tie #'details #'dot-collision-penalty = #0 %					default: 0.25	best: ?
    \override Tie #'details #'note-head-gap = #0.25 %						default: 0.2	best: 0.25
    \override Tie #'details #'stem-gap = #0.25 %						default: 0.3	best: 0.25
    \override Tie #'details #'tie-column-monotonicity-penalty = #100 %				default: 100	best: ?
    \override Tie #'details #'tie-tie-collision-penalty = #0 %					default: 30	best: ?
    \override Tie #'details #'tie-tie-collision-distance = #0 %					default: 0.25	best: ?
    \override Tie #'details #'horizontal-distance-penalty-factor = #0 %				default: 5	best: ?
    \override Tie #'details #'same-dir-as-stem-penalty = #0 %					default: 20	best: ?
    \override Tie #'details #'vertical-distance-penalty-factor = #0 %				default: 5	best: ?
    \override Tie #'details #'intra-space-threshold = #0 %					default: 1	best: 0
    \override Tie #'details #'outer-tie-length-symmetry-penalty-factor = #0 %			default: 3	best: ?
    \override Tie #'details #'outer-tie-vertical-distance-symmetry-penalty-factor = #0 %	default: 3	best: ?
    \override Tie #'details #'outer-tie-vertical-gap = #0 %					default: 0.15	best: ?
    \override Tie #'details #'single-tie-region-size = #4 %					default: 3	best: ?
    \override Tie #'details #'skyline-padding = #0.25 %						default: 0.05	best: 0.25
    \override Tie #'details #'multi-tie-region-size = #3 %					default: 1	best: ?
    \override Tie #'minimum-length = #3
    \override Tie #'line-thickness = #0.75
    \override Tie #'thickness = #2
  }
}
