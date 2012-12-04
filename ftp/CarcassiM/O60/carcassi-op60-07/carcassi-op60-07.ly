% Updated to Lilypond 2.4.2 by Ruud van Silfhout <Ruud.vanSilfhout@mutopiaproject.org> (31/Jan/2005)
% Corrected Opus Number by Nick Payne, updated to v2.14.2 by Javier Ruiz-Alma

\version "2.14.2"

\header {
    title =       "Etude 7"
    opus =        "Op. 60, No. 7"
    composer =    "Matteo Carcassi"
    
    mutopiatitle = "Etude 7"
    mutopiacomposer = "CarcassiM"
    mutopiaopus = "O 60"
    mutopiainstrument = "Guitar"
    date = "19th C."
    source = "Not known"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Jeff Covey"
    maintainerEmail = "jeff.covey@pobox.com"
    maintainerWeb = "http://pobox.com/~jeff.covey/"
    lastupdated = "2012/Feb/16"

 footer = "Mutopia-2012/12/01-300"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global = {
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \transposition c  % guitar music actually sounds an
                      % octave lower than written.
    \set Staff.instrumentName = "Guitar"
  {
    \clef violin \time 4/4 \key a \minor
	  \override TextScript   #'padding = #3
  	s1^\markup { "Allegro" }
	  \skip 1*7 \bar "||:" \break
	  \repeat volta 2 { \skip 1*20 }  
  }
}

dim =  {
    \set decrescendoText = \markup { \italic "dim." }
    \set decrescendoSpanner = #'nil
}
cresc =  {
    \set crescendoText = \markup { \italic "cresc." }
    \set crescendoSpanner = #'nil
}

melody =  \relative c' {
    \stemUp
        
     a16[ a' a a]  c,[ a' a a]  f[ a a a]  e[ a a a]
     d,[ a' f' a,] c, a' e' a,]  b,[ gis' d' gis,]  a,[ a' c a]
     d,[ a' b a]  dis,[ a' b a]  e[ a b a]  f[ a b a]
     e[ a c a]  e,[ a' c a]  e[ a b a]  e,[ gis' e' gis,]

				% 5

     \override TextSpanner #'(bound-details left text) = #"poco riten. "

     a,[ a' a a]  c,[ a' a a]  f[ a a a]  e[ a a a]
     d,[ a' f' a,] c, a' e' a,]  b,[ gis' d' gis,]  a,[ a' c a]
     d,[ a' b a]  dis,[ a' b a]  e[ a c a]  e,[ gis' b e] 
     r\startTextSpan a,[ c e]  f[ ( e) dis e] a4 \stopTextSpan r
    
				% 9

     \override TextSpanner #'(bound-details left text) = #" a tempo  "
				
     c,,16[ \startTextSpan c' c c]  e,[ c' c c]
     a[ c c c]  g[ c c c \stopTextSpan ]
     f,[ a d a]  e[ cis' e cis]  d,[ d' f d]  d,[ c' fis c]
     g[ b g' b,]  g,[ g' g' g,]  a,[ g' fis' g,]  b,[ g' f' g,]
     c,[ g' e' g,]  d[ g d' g,]  e[ g c g]  c,[ g' e' g,]
     f[ a a a]  e[ cis' cis cis]  d,[ d' d d]  fis,[ c' c c]
     g[ b b b]  f?[ dis' dis dis]  e,[ e' e e]  gis,[ d' d d]
     a[ c c c]  a,[ c' c c]  d,[ b' b b]  dis,[ a' a a]

				% 16

     e16[ gis b e]  f[ ( e) e e]  gis[ ( e) e e]  b'[ ( e,) e e]
     a[ ( e) e e]  f[ ( e) dis e]  d[ e c e]  b[ e a, e']
     e,[ gis b e]  f[ ( e) e e]  gis[ ( e) e e]  b'[ ( e,) e e]
     a[ ( e) e e]  f[ ( e) dis e]  d[ e c e]  b[ e a, e']
     gis,8[ f16 e']  e,[ e' dis, e']  e,[ e' d, e']  c,[ e' b, e']

				% 21
				
     \override TextSpanner #'(bound-details left text) = #"poco riten. "
    
     a,,16[ a' a a]  c,[ a' a a]  f[ a a a]  e[ a a a]
     d,[ a' f' a,] c, a' e' a,]  b,[ gis' d' gis,]  a,[ a' c a]
     d,[ f bes f]  d[ f bes f]  e[ g cis g]  e[ g cis g]
     f[ a d a]  cis,[ a' e' a,]  d,[ a' e' a,]  e[ a e' a,]
     fis[ dis' dis dis]  a[ dis dis dis]  gis,[ e' e e]  e,[ d' d d]
     a[ c c c]  e,[ b' b b]  f[ a a a]  c,[ a' c a]
     d,[ a' b a]  dis,[ a' b a]  e[ a c a]  e,[ gis' b e]
     r \startTextSpan a,[ c e]  f[ ( e) dis e] a4 \stopTextSpan r
    
}

bass =  \relative c' {
    \stemDown
    
    a4_\f c f e |
    \deprecateddim d \> c  b a \! |
    d \deprecatedcresc dis \< e f \! | e e, \deprecateddim e'\> e, \! |
    a_\f c f e | d c b a |
    d \< dis \deprecateddim e\!\>  e, a2\!_\p r

				% 9

    c4_\f e a g | f e d d |
    g g, a b | c_\mf d e c | 
    f e\>  d\! fis \> | g\! f \>  e\! gis \> | a\! \deprecatedcresc a, \< d dis \!

				% 16

    e_\mf s s s   e,2 d''8 c b a
    e4 s s s  e,2 d''8 c b a 
    \deprecatedcresc gis \< f e dis e d c b \!

				% 21

    a4_\f c f e d c b a
    d_\mf d e e f cis d \< e 
    fis\!_\sf a gis e
    a e \>  f\! c
    d dis \< e  e,\! \> \!
    a2_\p r
        
}


\score {
    \context Staff = "guitar" << 
        \global 
        \context Voice = "melody" { \melody }
      	\context Voice = "bass"   { \bass   }
    >>
    \layout { }
    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 110 4)
      }
    }


}

