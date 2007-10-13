%{
Gondellied by Dora Pejacsevich
first croatian woman compositor
%}

\version "2.10.33"

\header
{
  filename = "Gondellied.ly"
  title = \markup \fontsize #10.0 "Gondellied"
  composer = \markup \center-align { "Dora Pejacsevich" \small "(1885-1923)" }
  meter = \markup \italic "Andante cantabile"
  opus = "Op. 4"

  mutopiatitle = "Gondellied"
  mutopiacomposer = "PejacsevichD"
  mutopiaopus = "Op. 4"
  mutopiainstrument = "Piano"
  source = "Dora Pejacsevich' manuscript"
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "Stjepan Brbot"
  maintainerEmail = "stjepan.brbot@zg.t-com.hr"
  lastupdated = "2007/October/15"

 footer = "Mutopia-2007/10/13-1057"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score
{
  \new PianoStaff
    <<
      \new Staff \relative c''
      { 
        \clef "G" \time 3/4 \key e \minor

        e2. \> \p _\markup { \italic "   dolce e sempre legato" } ( b2.) \!                                                 % bar  1,2
        a8 \< ( b c2 \! ~ c2.) \>                                                                                           % bar  3,4
        b2. \p \> ( g2.) \!                                                                                                 % bar  5,6
        fis8 \< ( g a2 ~ a2. ) \! \break                                                                                    % bar  7,8
        
        g2. \< ( a2  b4) \!                                                                                                 % bar  9,10
        c2.( d2 \mf e4)                                                                                                     % bar 11,12
        fis,2. ~ fis2.                                                                                                      % bar 13,14
        g2. \mp \< ~ g4 \! r4 r4 \break                                                                                     % bar 15,16

        g'2. \mf \> ( d2.) \!                                                                                               % bar 17,18
        \appoggiatura { e16[ fis] } e2. \< ( d2.) \>                                                                        % bar 19,20
        e2. \mf \> ( c2.) \!                                                                                                % bar 21,22
        \appoggiatura { c16[ d] } c2. \< ( b2.) \> \break                                                                   % bar 23,24
        
        a2. \mf ( b2 \> a4) \!                                                                                              % bar 25,26
        r4 <b fis dis> \mp \< <b fis dis>   <b fis dis> <b fis dis> <b fis dis>                                             % bar 27,28
        r4 <b fis dis> \mf \< <b fis dis>   <b fis dis> <b fis dis> <b fis dis>                                             % bar 29,30
        r4 <b fis dis> \f  \< <b fis dis>   <b fis dis> <b fis dis> \! <b fis dis> \>                                       % bar 31,32
        
        \textSpannerDown \override TextSpanner #'edge-text = #(cons (markup #:italic "rit" ) "")
        <b fis dis> \f <b fis dis>\startTextSpan <b fis dis>                                                                % bar 33
        <b fis dis> <b fis dis> <b fis dis>\stopTextSpan \bar "||" \break                                                   % bar 34
        
        e2. ^"a tempo" \mp \> ( b2.) \!                                                                                     % bar 35,36
        a8 \< ( b c2 \mf ~ c2.)                                                                                             % bar 37,38
        b2. \> ( g2.) \!                                                                                                    % bar 39,40
        fis8 \< ( g  a2 ~a2.) \mf \break                                                                                    % bar 41,42

        g2. \< ( a2 b4) \!                                                                                                  % bar 43,44
        c2. \< ( d2 \! e4) \f                                                                                               % bar 45,46
        fis,2. \> ~ fis2.                                                                                                   % bar 47,48
        g2. \mp ~ g4 \> r4 r4 \! \break                                                                                     % bar 49,50

        g'2. \p ( d2.)                                                                                                      % bar 51,52
        \appoggiatura { e16[ fis] } e2. \< ( d2.) \>                                                                        % bar 53,54
        e2. \> ( c2.) \!                                                                                                    % bar 55,56
        \appoggiatura { c16[ d] } c2. \< ( b2.) \> \break                                                                   % bar 57,58
        
        a2. \! ( b2 \> a4) \!                                                                                               % bar 59,60
        r4 <b fis dis> \mp \< <b fis dis>   <b fis dis> <b fis dis> <b fis dis>                                             % bar 61,62
        r4 <b fis dis> \mf \< <b fis dis>   <b fis dis> <b fis dis> <b fis dis>                                             % bar 63,64
        r4 <b fis dis> \f \< <b fis dis>   <b fis dis> <b fis dis> \! <b fis dis> \>                                        % bar 65,66
        
        \textSpannerDown \override TextSpanner #'edge-text = #(cons (markup #:italic "rit" ) "") 
        <b fis dis> \f <b fis dis>\startTextSpan <b fis dis>                                                                % bar 67
        <b fis dis> <b fis dis> <b fis dis>\stopTextSpan \bar "||"  \break                                                  % bar 68

        e2. ^"a tempo" \mp \> ( b2.) \!                                                                                     % bar 69,70
        a8 \< ( b c2 \! ~ c2.)                                                                                              % bar 71,72
        b2.\> ( g2.) \!                                                                                                     % bar 73,74
        fis8 \< ( g a2~a2.) \> \break                                                                                       % bar 75,76
        
        g2. \p _\markup { \italic "  poco a poco rall. e dimin." }( e2.)                                                    % bar 77,78
        dis8( e fis2 ~ fis2._\markup { \italic "smorzando" })                                                               % bar 79,80
        e2.\pp( e2.\ppp e2.\pppp) \bar "|."                                                                                 % bar 81,82,83

      }

      \new Staff \relative c, 
      { 
        \clef "F" \time 3/4 \key e \minor
 
        e4( <e' g b> b,)              e( <e' g b> b,)             e( <dis' fis a> b,)             e( <dis' fis a> b,) 
        e( <e' g b> b,)              e( <e' g b> b,)             e( <c' fis a> b,)               e( <c' fis a> b,)
        e( <e' g b> b,)              e( <e' g b> b,)      a <c' e a>\arpeggio <e a c>\arpeggio   <a c e>\arpeggio <c e a>\arpeggio r4
        d,, <fis' c' d> <fis c' d>  <d fis c'> <e fis c'> <d fis c'>   g,, <b' d g>\arpeggio <d g b>\arpeggio  <g b d>\arpeggio \clef "G" <b d g>\arpeggio <d g b>\arpeggio  

        <g b> <g b> <g b>               <g b> <g b> <g b>
        <fis a> <fis a> <fis a>      <fis a> <fis a> <fis a>     <e g> <e g> <e g>               <e g> <e g> <e g>
        <d fis> <d fis> <d fis>      <d fis> <d fis> <d fis>     <c e> <c e> <c e>               <c e> <c e> <c e> \clef "F"
        << { r4 fis,4( g4 a4 g4 fis4) } \\ { b,2.~b2. } >> << { r4 fis'4( g4 a4 g4 fis4) } \\ { b,2.~b2. } >>  << { r4 fis'4( g4 a4 g4 fis4) } \\ { b,2.~b2. } >> b'4-- a4-- g4-- fis-- \appoggiatura { fis16[ a] } g4-- fis--

        e,( <e' g b> b,)             e( <e' g b> b,)             e( <dis' fis a> b,)             e( <dis' fis a> b,) 
        e( <e' g b> b,)              e( <e' g b> b,)             e( <c' fis a> b,)               e( <c' fis a> b,)
        e( <e' g b> b,)              e( <e' g b> b,)      a <c' e a>\arpeggio <e a c>\arpeggio   <a c e>\arpeggio <c e a>\arpeggio r4
        d,, <fis' c' d> <fis c' d>  <d fis c'> <e fis c'> <d fis c'>   g,, <b' d g>\arpeggio <d g b>\arpeggio  <g b d>\arpeggio \clef "G" <b d g>\arpeggio <d g b>\arpeggio  

        <g b> <g b> <g b>            <g b> <g b> <g b>
        <fis a> <fis a> <fis a>      <fis a> <fis a> <fis a>     <e g> <e g> <e g>               <e g> <e g> <e g>
        <d fis> <d fis> <d fis>      <d fis> <d fis> <d fis>  <c e> <c e> <c e>  <c e> <c e> <c e> \clef "F"
        << { r4 fis,4( g4 a4 g4 fis4) } \\ { b,2.~b2. } >> << { r4 fis'4( g4 a4 g4 fis4) } \\ { b,2.~b2. } >>  << { r4 fis'4( g4 a4 g4 fis4) } \\ { b,2.~b2. } >> b'4-- a4-- g4-- fis-- \appoggiatura { fis16[ a] } g4-- fis--

        e,( <e' g b> b,)             e( <e' g b> b,)             e( <dis' fis a> b,)             e( <dis' fis a> b,) 
        e( <e' g b> b,)              e( <e' g b> b,)             e( <c' fis a> b,)               e( <c' fis a> b,)
        e( <e' g b> b,)              e( <e' g b> b,)             e( <dis' a' c> b,)              e( <dis' a' c> b,)
        e( <e' g b> b,)              e( <e' g b> b,)             e( <e' g b>2)
      }

    >>
    \midi { \context { \Voice \remove "Dynamic_performer"} }
    \layout {}
}


