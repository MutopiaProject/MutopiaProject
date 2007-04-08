

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 23"
   \right-align "polska from Södermanland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 23"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-822"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
  \key g \major
  \time 3/4
}



upper =  {
  \global
  \repeat volta 2 {
    g''8[ b'']\staccatissimo d''[ g'']\staccatissimo b'[ d'']\staccatissimo |
    g'[ b']\staccatissimo d'[ g']\staccatissimo g4 |
    d'8. d''16 \once \override Script #'padding = #0.3 d''4\trill c'' |
    d'8. c''16 \once \override Script #'padding = #0.3 c''4\trill b' |
    d'8. d''16 \once \override Script #'padding = #0.3 d''4\trill c'' |
    d'8. c''16 \once \override Script #'padding = #0.3 c''4\trill b' |
    \grace c''16 b'8 a'16 b' c''8 e'' d'' b' |
    d''16( c'') a'\staccatissimo fis'\staccatissimo g'4 g |
  }
  \repeat volta 2 {
    b'8( g')\staccatissimo c''( a'\staccatissimo) d''( b'\staccatissimo) |
     <g' c'' e''>4 \arpeggio \grace g''16    \once \override Script #'padding = #2 fis''8. \trill    e''32 fis'' g''4 |
    g''8[ b''] e''[ g''] fis''[ a''] |
    a''8. fis''16 a'' g'' e'' cis'' d''4 |
  }
  << { d''8. a''16 a''8.\trill g''32 a'' g''4	 } \\ { 	fis'16  a' fis' a' fis' a' fis' a' e' a' e' a' } >> | 
  << { a'8. g''16 <a' g''>8.\trill fis''32 g'' <a' fis''>4 } \\ { cis'16 e' cis' e' cis' e' cis' e' d' fis' d' fis' }  >> |
  << { d''8. a''16 a''8.\trill g''32 a'' g''4	 } \\ { 	fis'16 a' fis' a' fis' a' fis' a' e' a' e' a' } >> |
  << { a'8. g''16 <a' g''>8.\trill fis''32 g'' <a' fis''>4 } \\ { cis'16 e' cis' e' cis' e' cis' e' d' fis' d' fis' }  >> |

   \grace g''16  fis''8 e''16 fis''16 g''8\staccatissimo b''\staccatissimo a''\staccatissimo fis''\staccatissimo |
  a''16 g'' e'' cis'' d''4 d' |
  << {	g'8. g''16 g''8 d'' e'' f'' } \\ { g'2 r4 } >> |
  << {	e''8 d'' c'' b' c''4 } \\ { g'2  } >> |

  << {	a'8. a''16 a''8 e'' fis'' g'' } \\ { a'2 r4 } >> |
  fis''8 e'' d'' cis'' d''4 |
  d'8. d''16  \grace e''16 \once \override Script #'padding = #1.6  d''8.\trill cis''32 d'' c''4 |
  d'8. c''16  \grace d''16 \once \override Script #'padding = #1.3  c''8.\trill b'32 c'' b'4 |

  d'8. d''16  \grace e''16 \once \override Script #'padding = #1.7  d''8.\trill cis''32 d'' c''4 |
  d'8. c''16  \grace d''16 \once \override Script #'padding = #1.2  c''8.\trill b'32 c'' b'4 |
   \grace c''16  b'8 a'16 b' c''8[ e''] d''[ b'] |
  d''16( c'') a'\staccatissimo fis'\staccatissimo g'4 g \bar "|."
}

lower =  {
  \global \clef bass
  \repeat volta 2 {
    g,16 b, d g g, b, d g g, b, d g |
    \repeat "percent" 3 { g,16 b, d g }	 |
    d b g b d b g b d c' a c' |
    d a fis a d a fis a d b g b |

    d b g b d b g b d c' a c' |
    d a fis a d a fis a d b g b |
    g, g fis g e g c g b, g g, g |
    d a fis a r g fis g g,4 |
  }

  \repeat volta 2 {
    <g d'>8 <g d'> <fis d'> <fis d'> <f d'> <f d'> |
    <e c'> <e c'> <d a c'> <d a c'> <g b> <g b> |
    <e b> <e b> <cis a> <cis a> <d a> <d a> |
    <a, d fis> <a, d fis> <a, e g> <a, e g> <d fis>4 
  }

  s1*3/4
  s1*3/4
  s1*3/4
  s1*3/4

  d8\staccatissimo d'\staccatissimo b\staccatissimo g\staccatissimo fis\staccatissimo d\staccatissimo |
  << { r8 <e g>8 <d fis>4 } \\ {  a,4  d  d16( e d c ) } >> |

  << { 	r16 g( fis g fis g fis g fis g fis g)  } \\ { <d b,>2. } >> |
  c16 g f g e g d g c e g c'
  << { 	r16 a( gis a gis a gis a gis a gis a)  } \\ { <cis e>2. } >> |
  d16( a g a fis a e a d fis a d') |

  d b g b d b g b d c' a c' |
  d a fis a d a fis a d b g b |

  d b g b d b g b d c' a c' |
  d a fis a d a fis a d b g b |
  g, g fis g e g c g b, g g, g |
  d a fis a r g fis g g,4 |
}
    
dynamics = {
  \repeat volta 2 {
  s2. \f 
s2.*5 
 s2. \f

 s2.

}

  \repeat volta 2 {
 s8\p s8 s2
s2. \f 
s2.\p
 s2.
}

  
 s2.\p  s2.*5  s2. \ff  s4 \> s8 s8 \! s4   s2. \ff s2. s4 \p s2  _\markup { \italic \small dolce } s2.*3  s2. \f s2.


}


\score {
  \new PianoStaff \with{systemStartDelimiter = #'SystemStartBracket } <<
    \new Staff = "upper" \upper
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" <<
      \clef bass
      \lower
    >>
  >>

  \layout {
    \context {
      \type "Engraver_group"
      \name Dynamics
      \alias Voice % So that \cresc works, for example.
      \consists "Output_property_engraver"
%      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
      \consists "Piano_pedal_engraver"
      \consists "Script_engraver"
      \consists "Dynamic_engraver"
      \consists "Text_engraver"
      \override TextScript #'font-size = #2
      \override TextScript #'font-shape = #'italic

      \override DynamicText #'extra-offset = #'(0 . 2.5)
      \override Hairpin #'extra-offset = #'(0 . 2.5)


      \consists "Skip_event_swallow_translator"
      \consists "Axis_group_engraver"
    }
    \context {\Score \remove "Bar_number_engraver"}
    \context {
      \PianoStaff
      \accepts Dynamics
   \override VerticalAlignment #'forced-distance = #7
  \override SpanBar #'transparent = ##t

    }
  }
}

          


mididynamics = { \dynamics } 
midiupper = { \upper }
midilower = { \lower }

          




\score {
  \unfoldRepeats
  \new PianoStaff <<
    \new Staff = "upper" <<  \midiupper  \mididynamics >>
    \new Staff = "lower" <<  \midilower  \mididynamics >>
  >>
  \midi {
    \context {
      \type "Performer_group"
      \name Dynamics
      \consists "Piano_pedal_performer"
    }
    \context {
      \PianoStaff
      \accepts Dynamics
    }
 \tempo 4=110    
  }
}






  


