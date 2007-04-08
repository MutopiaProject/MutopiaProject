

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 22"
   \right-align "polska from Södermanland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 22"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-821"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
  \key g \major
  \time 3/4
}
    
 G = { < g b >8 d < g b > d < g b > d  }
 DSEVEN = { < a c' >8 d < a c' > d < a c' > d }
 D = { < fis a >8 d < fis a > d < fis a > d }

upper =   \relative c'' {
  \global
  \repeat volta 2 {
    d8.( c16 ) b4 g
    c8.( b16 ) a4 d,
    g8.( fis16 ) g8 a b c 
    d8.( e16 ) d8 c b c 
    d8.( c16 ) b4 g
    c8.( b16 ) a4 d,
    g8.( fis16 ) g8 a b c 
    a8.( fis16 ) g2
    \bar "||"
    < b, d >8-.(            
    < b d >-.
    < b d >-.
    < b d >-.
    < b d >-.
    < b d >-. )
    < c e >8-.(
    < c e >8-.
    < c e >8-.
    < c e >8-.
    < c e >8-.
    < c e >8-.)
    << { g'8  a b a g fis } {  b,8    c  d c b a   } >> 
    < g' b, >4  d8 c b a 
    g8-.( < b d >-. < b d >-. < b d >-. < b d >-.  < b d >-.  ) 
    < c e >-.( < c e >-. < c e >-. < c e >-. < c e >-. < c e >-. ) 
    << { g'8  a b a g fis } {  b,8  c  d c b a  } >>
    < g' b, >4   g, r
  }  
}
     
lower =  {
  \global \clef bass
  \repeat volta 2 {     
    \G \DSEVEN \G \D 
    \G \DSEVEN \G 
    << a8 c'8 >> d  << g4 b4 >> g,
    g,-. g,-. g,-. c-. c-. a,-. d d, d g, d8 c b, a, g,4  g8( fis e d ) c4.( b,8 c a, ) d4 d, d  g g, r
  } 
}

dynamics = {
  s2.*8 s8 \p  s8  _\markup {  \small \italic  "dolce" \null  }  s2       s2.  s2 \< s8 s8 \! 
   s2. \f   \once     \override DynamicText #'extra-offset = #'(0 . -0.0)  s2. \p s2. s2 \<  s8 s8 \!    s2. \f
 
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
 \tempo 4=95    
  }
}






  


