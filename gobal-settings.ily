% When we want to check tie behaviour with
% different values of various properties,
% the most convenient way is to add these
% settings here (as this file should be
% included in every test file).
% Use \bookOutputSuffix to ensure that the
% pdf files will have a specific name.

% \paper settings probably won't change:
\paper {
  paper-width = 180 \mm
  left-margin = 2 \mm
  right-margin = 2 \mm
}

% I recommend to check tie shapes
% with 3 staff sizes: 20, 14 and 8.
#(set-global-staff-size 20)


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


