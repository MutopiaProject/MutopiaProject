

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 31"
   \right-align "polska from Östergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 31"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-824"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
  \key c \major
  \time 3/4
}
    
upper =  {
  \global
  \repeat volta 2 {
    c''8 g''16 f'' e''8 d'' c''16 b' a' g' |
    f'8 a'' e' g'' d' f'' |
    e'' g'' c''' g'' e'' c'' |
    b'16 c'' d'' e'' d'' c'' b' a' g'4 |
    c''8. g'16 a'4 b' |

    c''8 e'' d'' f'' e'' g'' |
    c''16( b' a' g' ) a'4 b' |
    << { c''8 e'' d'' f'' e'' g'' } \\ { g'2 g'4 } >> |
    <g'' e''>8  <f'' d''>16 <e'' c''> <a'' f''>8 <g'' e''> <f'' d''> <e'' c''> |
    << { e''16 d'' c'' b' } \\ { g'4  } >>  << { b'4( c'') } \\ { <f' d'>4( e'4 )  } >>  
  }
  \repeat volta 2 {
    g'16 a' b' c'' d'' c'' b' a' g'8 <cis'' e''>  |
    <d'' f''>8. <e'' g''>16 <d'' f''>8. <cis'' e''>16 d'' c'' b' a'  |
    g'16 a' b' c'' d'' c'' b' a' g'8 <cis'' e''>  |
    <d'' f''>8. <e'' g''>16 <d'' f''>8. <cis'' e''>16 d'' c'' b' a'  |
    g''16  a'' g'' fis'' g'' a'' g'' fis'' g'' a'' g'' fis'' |
%5
    g''4 g'16 a' b' c'' d''8 e'' |
    f''16 g'' f'' e'' f'' g'' f'' e'' f'' g'' f'' e'' |
    f'' e'' d'' c'' b' c'' d'' e'' f'' g'' a'' b''  |
    c'''8 \once \override Script #'padding = #0.3  b''\trill c''' \once \override Script #'padding = #0.3 b''\trill c''' \once \override Script #'padding = #0.3  b''\trill |
    c''' g''16 e'' c''8 <e' g'> <d' f'> <c' e'> |
%10
    d'16 e' d' cis' d' e' f' g' a' d'' f'' a'' |
    g''( f'') d'' b' << { b'4( c'') } \\ { <d' f'>4( e') } >>
  }
}

lower =  {
  \global \clef bass
  \repeat volta 2 {
    <c e g>8 c' <c e g> c' <e g> c' |
    <f a> c' g c' g b |
    c' g e c e fis |
    g d b, d g g, |

    e c f d g f |
    e c b, g, c c, |
    g, g f16 e f d g a g f |
    e8 c b, g, c c, |
    <c, b,>4 f8 g a fis |
    g g, g,4( c ) 
  }
  \repeat volta 2 {
    g8 d b, d g e |
    d a, d e f fis  |
    g d b, d g e |
    << {  a2( a8 ) cis'8 } \\ { d a, d e f fis } >> |
%15
    << { b c' b c' b c' } \\ { g2. } >> |
    << { b16( c' d' c') b8 b( b16 a) b cis'  } \\ { g2. } >>  |
    << { d'8 cis' d' cis' d' cis'  } \\ { g2. } >>  |
    <g d'>4. <g d'>8 <g d'> <g d'>   |
    <c' e'>\staccatissimo <g d'>\staccatissimo <c' e'>\staccatissimo <g d'>\staccatissimo <c' e'>\staccatissimo <g d'>\staccatissimo |
%20
    <c' e'>4 r8 <c e> <d f> <e g> |
    <f a> <f a> <f a> <f a> <f a> <f a> |
    g g, g,4 c
  }
}
   
dynamics = {
  \repeat volta 2 {
  s2.*8 s2.  \sf 
  s4  
  s4\> s4 \! 
  }
  \repeat volta 2 {
  \once \override DynamicText #'transparent = ##t   s2 \mf

  s8\< s8 \!


  s8\> s4 s4 s16 s16 \! s2 

  s8 \< s8 \! 

   s8 \> s2 s16 s16 \!    s2.    \p s2.*2 s2  
 s16 \< s8 s16 \!  s2. \f s2.*2 s4 
   s4 \>  s4 \! 
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
 \tempo 4=85    
  }
}






  


