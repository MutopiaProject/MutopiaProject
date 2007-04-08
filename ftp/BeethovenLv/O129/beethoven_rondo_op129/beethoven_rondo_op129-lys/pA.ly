%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PART A : BARS 1-24  0'00-0'19
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.2.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% RIGHT HAND PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rhA = \notes \relative b' {
    \clef treble
    \key g \major
%%% 1-6
    b4( d8-.) d-. | g-. g-. b4->( | d16 c d c a8-.) r |
    d16( c d c a8-.) r | b,4( d8-.) d-. | g-. g-. b4->( |
%%% 7-13
    d16 c d c a8-.) a16( b | g4-.) r |
    b16 a g fs e fs g a | b8-. b-. e4-> |
    e16( ds e ds b8-.) r | e16( ds e ds b8-.) r |
    b16 a g fs e fs g a |
%%% 14-21
    b8-. b-. e4-> |
    << { cs2 | }
       { \override TextSpanner  #'style = #'trill
         \override TextSpanner  #'edge-height = #'(0 . 0)
         \override TextSpanner  #'edge-text  = #(cons (make-musicglyph-markup "scripts-trill")  "")
         s4..^\startTextSpan \grace { b16\stopTextSpan [ cs ] } } >>
    d4 d, |
    b4 d8 d | g g b4 | d16 c! d c a4-> |
    d16 c d c a4-> | b,4 d8 d |
%%% 22-24
    g g b4 | d16 c d c a8 a16 b | g4 r |
%%% END
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% LEFT HAND PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lhA = \notes \relative g {
    \clef bass
    \key g \major
%%% 1-6
    <g b d>8 <g b d> <g b d> <g b d> | <g b d> <g b d> <g b d> <g b d> |
    <g c d fs> <g c d fs> <g c d fs> <g c d fs> |
    <g c d fs> <g c d fs> <g c d fs> <g c d fs> |
    <g b d> <g b d> <g b d> <g b d> | <g b d> <g b d> <g b d> <g b d> |
%%% 7-13
    <g c d fs>8 <g c d fs> <g c d fs> <g c d fs> |
    <g b d g> <g b> <g b> <g b> |
    <e g b> <e g b> <e g b> <e g b> | <e g b> <e g b> <e g b> <e g b> |
    <b fs' a b> <b fs' a b> <b fs' a b> <b fs' a b> |
    <b fs' a b> <b fs' a b> <b fs' a b> <b fs' a b> |
    <e g b> <e g b> <e g b> <e g b> |
%%% 14-21
    <e g b>8 <e g b> <e g b> <e g b> |
    <a, e' g a> <a e' g a> <a e' g a> <a e' g a> |
    <d fs a> <d fs a> <d fs a> <d fs a> |
    <g, b d g> <g b d g> <g b d g> <g b d g> |
    <g b d g> <g b d g> <g b d g> <g b d g> |
    <g c d fs> <g c d fs> <g c d fs> <g c d fs> |
    <g c d fs> <g c d fs> <g c d fs> <g c d fs> |
    <g b d g> <g b d g> <g b d g> <g b d g> |
%%% 22-24
    <g b d g>8 <g b d g> <g b d g> <g b d g> |
    <g c d fs> <g c d fs> <g c d fs> <g c d fs> |
    <g b d g>4 g |
%%% END
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DYNAMICS PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dynA = \notes {
%%% 1-6
    \mark\markup{\bold "Allegro vivace"}
    s8_\p s s s | s2*5 |
    \myBreak
%%% 7-13
    s2*6 | s8 s s_\cresc s |
    \myBreak
%%% 14-21
    s2*3 | s8_\f s s s | s2*4 |
    \myBreak
%%% 22-24
    s2*3 |
%%% END
}