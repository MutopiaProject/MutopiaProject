

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 33"
   \right-align "polska from Östergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 33"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-825"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
  \key bes \major
  \time 3/4
}

upperdacapo = { bes8 bes'16 a' bes'8 bes c' bes' |
  d' bes'16 a' bes'8 d' ees' g'' | \break
  f'' g''16 a'' bes'' a'' g'' f'' ees'' d'' c'' bes' |
  f' bes' a' c'' <ees' c''>4 <d' bes'> 
}


upper =  {
  \global
  \repeat volta 2 {
    bes8 bes'16 a' bes'8 bes c' bes' 
    d' bes'16 a' bes'8 d' ees' g'' |
    f'' g''16 a'' bes'' a'' g'' f'' ees'' d'' c'' bes' | 
    bes' a' bes' d'' c'' bes' a' g' f' ees' d' c'  \mark \markup { \musicglyph #"scripts.segno" }  
    \upperdacapo 
  }

  \repeat volta 2 {
    f'8 f''16 e'' f''8 f' g' f'' |
    a' f''16 e'' f''8 a' bes' bes'' |
   \once \override Script #'padding = #0.3  a''  \trill c'''16 e'' \once \override Script #'padding = #0.3 f''8 \trill  a''16 c'' d''8 \staccatissimo bes'' |
    a''16 g'' f'' e'' f''8 c''16 a' f'4 |
%5
    << { f''16 g'' aes'' g'' aes''8 f''8 ees'' d''    ees''16 f'' g'' f'' ees''8 bes' g' ees'         ees''16 f'' g'' f'' g''8 ees'' c'' a'  } \\ { c'4.  aes'8 g' f' g'4. bes'8 g' ees'  g'4. ees''8 c'' a'    } >> <<   {  } \\ { } >> |
    bes'16 a' bes' d'' c'' bes' a' g' f' ees' d' c'   
  }
}
     
lowerdacapo = { 	<bes,, bes,>4. <d, d>8 <ees, ees> <ees, ees> |
  <f, f>4. <f, f>8 <g, g> <ees, ees> |
  <d, d>4. bes,8 d g |



     \override Score.RehearsalMark
       #'break-visibility = #begin-of-line-invisible
  f f, bes,2
     \once \override Score.RehearsalMark #'self-alignment-X = #right
   \mark \markup { \small  \italic "Fin." }


}

lower =  {
  \global \clef bass
  \repeat volta 2 {
    <bes,, bes,>4. <d, d>8 <ees, ees> <ees, ees> |
    <f, f>4. <f, f>8 <g, g> <ees, ees> |
    <d, d>4. bes,8 ( d e ) |
    f f, r <f, f> <f, f> <f, f>  \mark \markup { \musicglyph #"scripts.segno" }
%5
    \lowerdacapo
  }

  \repeat volta 2 {
    <f, f>4. <a, a>8 <bes, bes> <bes, bes> |
    <c c'>4. <c' ees'>8 <d' f'> <bes d'> \staccatissimo |
    c' bes a f bes g |
    c' c <f, f>2 |

    <aes, aes>4. aes8 bes bes, |
    <ees, ees>4. bes8 g ees |
    <c c'>4. <f c'>8 <f c'> <f c'> |



     \override Score.RehearsalMark
       #'break-visibility = #begin-of-line-invisible
    <bes d'>4. <f, f>8 <f, f> <f, f> 
     \once \override Score.RehearsalMark #'self-alignment-X = #right
  



 \mark \markup {  \small \italic "D.C. al  " \null \tiny  \musicglyph #"scripts.segno" }

  }
}

dynamicsdacapo = {   
 s2. 
 s2. \sf 
 s2. \sf 
 s2    s4    }
  
dynamics = {
  \repeat volta 2 {
 s2. \sf
 s2. \sf 
 s2. \sf 
 s2. 

\dynamicsdacapo   
  }
  \repeat volta 2 {




    s4 \sf     s2 \p s2.*3 s2.*3 \sf s2 s8 s8 s8


  }
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

          


mididynamics = { \dynamics \dynamicsdacapo } 
midiupper = { \upper \upperdacapo }
midilower = { \lower \lowerdacapo }


          




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
 \tempo 4=80    
  }
}






  


