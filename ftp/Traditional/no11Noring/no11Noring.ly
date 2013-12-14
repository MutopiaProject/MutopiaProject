\version "2.16.2"
    #(set-global-staff-size 17.82)

\header {
  arranger="Johan Halvorsen"
  composer="HARDANGER"
  title="Nº11. Nöring."
  mutopiatitle="Nº1. Nöring."
  mutopiacomposer="Traditional"
  %no lyrics, no poet
  %mutopiapoet=""
  mutopiaopus="Verk 24"
  mutopiainstrument="Piano, Violin"
  date="1895"
  source="Carl Warmuths Musikforlag"
  style="Folk"
  copyright="Creative Commons Attribution-ShareAlike 3.0"
  maintainer="Helge Hafting"
  maintainerEmail="helge dot hafting at ntebb dot no"
  moreInfo="Scanned public domain original from International Music Score Library Project IMSLP63468-PMLP129433-Halvorsen-Nordic-Songs-and-Dances-complete-vln-pno.pdfTitle of the original songbook: 'Norske Viser og Dandse (Norwegishe Volksweisen und Tänze)'."
  %No lyrics, so no poet. Instead, display violin tuning in this position on the page
  poet = \markup {
    \score {
      \new Staff \with {    
       fontSize = #-4
        \override StaffSymbol #'staff-space = #(magstep -4)
        \consists "Balloon_engraver"
        \override BalloonTextItem #'annotation-line = ##f
        \override BalloonTextItem #'annotation-balloon = ##f
        \remove "Time_signature_engraver"
        \remove "Clef_engraver"
        \override Stem #'stencil = ##f
      }
      {
        \set Staff.instrumentName = \markup {
          \smaller \column { "Violin tuning" %\line { "tuning" }
          }
        }
        <e-\balloonText #'(1 . 0) \markup { \italic "e" } 
         a-\balloonText #'(1 . 0) \markup { \italic "a" } 
         a'-\balloonText #'(1 . 0) \markup { \italic "a" } 
         cis''-\balloonText #'(1 . 0) \markup { \italic "cis" } >4 
      }
      \layout{}
    } %score
  } %markup

 footer = "Mutopia-2013/12/14-1894"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

%All appogiatura and acciaccatura have this:
% \scaleDurations 1/2
%in order to prevent "going back in MIDI time"


violin= \relative f'' {
  \clef treble
  \time 3/4
    \repeat volta 2 {
    
    \acciaccatura \scaleDurations 1/2 {fis8} <a, g'>4.->_\markup {\italic "ad libitum"}_\markup "con sordino"
    
    <<
      {e'8( f\trill e)} \\
      a,4. 
    >>
    <d, a'>2^\markup{\italic "ten."} \appoggiatura \scaleDurations 1/2 {gis'16[ a gis]} <a a,>4->
    <<
      {\voiceOne \acciaccatura \scaleDurations 1/2 {fis8} \stemUp g4. e8( f\trill e)}
      \new Voice {\voiceTwo a,2.} 
    >> \oneVoice \stemNeutral
   <e b'>2.
  }
  \time 2/4
  <<
    {
      e'2
      e
      e
    } \\ 
    {
      \appoggiatura \scaleDurations 1/2 {cis16[ d]} cis8[\(\mf b cis e\)]
      e[\( b \appoggiatura \scaleDurations 1/2 {cis16[ d]} cis8 a]\)
      \appoggiatura \scaleDurations 1/2 {cis16[ d]} cis8[\( b cis e]\)
    } 
  >>
  <e, b'>2\fermata
  << {
    \appoggiatura \scaleDurations 1/2 {fis16[\pp g]} fis8[\( e fis a]\)
    a[\( e \appoggiatura \scaleDurations 1/2 {fis16[ g]} fis8 d]\)
    \appoggiatura \scaleDurations 1/2 {e16[ fis]} e8[\( d e a]\)
  } \\ {
    g,2
    g
    g
  } >>
  \appoggiatura \scaleDurations 1/2 {b8} <c d>4. b8
  \time 3/4
  \repeat volta 2 {
    << { \voiceOne
      \appoggiatura \scaleDurations 1/2 {s32 d16} \times 2/3 { d8-0\( e fis\) }
    } \\ \new Voice { \voiceTwo 
      \appoggiatura \scaleDurations 1/2 {b,32[ c b]}  \stemDown  c4\pp
    } >> \oneVoice \stemNeutral \times 2/3 {c8\( e b\)} g8. b16 
    e8. b16 e8. b16 g8. b16
  } \alternative {
    {
      << {
        a'4 \acciaccatura \scaleDurations 1/2 {d,8} d4. s8
      } \\ {
        \times 2/3 {e8( a fis)} \appoggiatura \scaleDurations 1/2 {b,32[ c b]} c4.\( b16-.\) r16
      } >>
    }
    { << {
        a'4 \appoggiatura \scaleDurations 1/2 {d,8} d4.\fermata
      } \\ {
        \times 2/3 {e8( a fis)} \appoggiatura \scaleDurations 1/2 {b,32[ c b]} c4.\fermata
      } >>
      r8\fermata
    }
  }
  \bar "||"
  \time 2/4
  \grace \scaleDurations 1/2 {s8}
  << {
    e'2
    \repeat unfold 4 e
    fis,8( fis)-> fis16( e g)-> e
    f16[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r16 \set stemLeftBeamCount = #1 d16_( e]) e8\trill_( d16) e
    fis8( fis)-> fis16( e g)-> e
    f16[ \set stemLeftBeamCount = #1 \set stemRightBeamCount = #1 r16 \set stemLeftBeamCount = #1 d16_( e]) e8\trill_( d16) e^\markup {\italic "rit. molto"}
    fis8[( \times 2/3 {e16 fis e])} <d g,>8.[ b16] 
    \appoggiatura \scaleDurations 1/2 {d16} \times 2/3 {d8([ e fis])} g,8.[_(\fz b16-.])
    \appoggiatura \scaleDurations 1/2 {d16} \times 2/3 {d8([ e fis])} g,8.[_(\fz b16-.])
    \appoggiatura \scaleDurations 1/2 {d16} \times 2/3 {d8([ e fis])} g,8..[_\(\fz b64( e])\)
    \appoggiatura \scaleDurations 1/2 {d16} d2
  } \\ {
    cis'4\p\<\mark "a la Halling." \acciaccatura \scaleDurations 1/2 {d8} cis16^(\! b) d^. b^. 
    cis8^. a16 b b8^(^\trill a16)^> b^.
    cis4 cis16^( b d^>) b
    cis8( a16^>) b b8(^\trill a16)^> b 
    cis8( \times 2/3 {b16 cis b)} a4

    g,8(\pp g) g4 
    g2
    g2
    g2
    s8 g8 s4
    \appoggiatura \scaleDurations 1/2 {b32[ c b]} c4 s4
    \appoggiatura \scaleDurations 1/2 {b32[ c b]} c4 s4
    \appoggiatura \scaleDurations 1/2 {b32[ c b]} c4 s4
    \appoggiatura \scaleDurations 1/2 {b32[ c b]} c2 %going back in MIDI time
  } >> 
  
}

pianoupper= \relative c' {
  \clef treble
  \time 3/4
  \repeat volta 2 {
  \grace \scaleDurations 1/2 {s8} 
    r2.
    r4 <a cis e> r
    r2. 
    r4 <gis b e> r
  }
  \time 2/4
  \repeat unfold 3 {
    \acciaccatura \scaleDurations 1/2 {fis'8} e2
  }
  \acciaccatura \scaleDurations 1/2 {fis8} e2\fermata
  \repeat unfold 4 {s2}
  \time 3/4
  \repeat volta 2 {
    \grace \scaleDurations 1/2 {s16.} r2. r2.
  }
  \alternative {
    {r2.}
    {r2.\fermata}
  }
  \bar "||"
  \time 2/4
  \acciaccatura \scaleDurations 1/2 {dis8} <e a>4\p
  \repeat unfold 9 {
    \acciaccatura \scaleDurations 1/2 {dis8} <e a,>4
  }
  \repeat unfold 5 {s2}
  \repeat unfold 3 {r4 e}
  r4 \clef bass <e, a cis>
  \bar "|."
}

pianolower= \relative c {
  \time 3/4
  \clef bass
  \repeat volta 2 {
  \grace \scaleDurations 1/2 {s8} 
    r2. 
    r4 <a e'> r
    r2.
    r4 <b e> e,
  }
  \time 2/4
  \grace \scaleDurations 1/2 {s8} r4 \acciaccatura \scaleDurations 1/2 {dis8} e4~
  e4 \acciaccatura \scaleDurations 1/2 {dis8} e4~
  e4 \acciaccatura \scaleDurations 1/2 {dis8} e4~
  e4 \acciaccatura \scaleDurations 1/2 {dis8} e4\fermata
  <<
    \stemUp \repeat unfold 4 {
      \acciaccatura \scaleDurations 1/2 {fis'8} e2
    } \\ {
      r4 e,,~
      e e
      e e
      e a
    }
  >> \stemNeutral
  \time 3/4
  \repeat volta 2 {
    \grace \scaleDurations 1/2 {s16.} <a' e'>2^\ppp q4
    q2 q4
  }
  \alternative {
    {q2 q4}
    {q2 q8 r8\fermata}
  }
  \bar "||"
  \time 2/4
  \grace \scaleDurations 1/2 {s8}
  \repeat unfold 5 {
    r8 q4.
  }
  << {
    a'4(^\ppp gis)^\markup{\italic sempre} 
    g( fis)
    f\( e
    dis d\)
    <eis cis'>8^\markup{\italic "rit. molto"}
    <e gis d'>
    <e a cis>
  } \\ {
    a,4( gis)
    g( fis)
    f\( e
    dis d\)
    <cis gis'>8
    e
    <e a,>4 
  } >>
  \repeat unfold 3 {
    <a cis e>8 r <a d e>4
  }
  <a cis e>8 r <a, e' a>4
}

music = <<
  \new Staff = "violin" \with {
    %Slightly smaller staff, so it fits on letter paper
    %The original also had a smaller violin staff
    fontSize = #-3
    \override StaffSymbol #'staff-space = #(magstep -3)
    \override StaffSymbol #'thickness = #(magstep -3)
    %Needed when using the slightly smaller staff:
    \override Beam #'auto-knee-gap = #4
  } { 
    \set Staff.instrumentName = #"Violin"
    \set Staff.midiInstrument = #"violin"
    \key c \major
    \violin
  }
  \new PianoStaff  <<
    \set PianoStaff.instrumentName = #"Piano"
    \set PianoStaff.midiInstrument = #"acoustic grand"
    \new Staff = "upper" {
      \key c \major
      \pianoupper 
    }
    \new Staff = "lower" {
      \key c \major 
      \pianolower
    } 
  >>
>>

\paper {
  %We really want all in one page
  systems-per-page = 5
}

%pdf output
\score { 
  \music 
  \layout{
    \context {
      \Score
      % Make 1/8 note most common, saves space
      \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8)
    }
    \context {
      %Thicker beams looks better. This works for
      %all except grace notes.
      \Voice
      \override Beam #'beam-thickness = #0.6
    }
  }
}

%midi output
\include "articulate.ly"
\score {
  \unfoldRepeats \articulate
  { %Add a silent bar, preventing "going back in MIDI time"
    %because this music starts with a grace note,
    %something lilypond 2.16 fails to handle properly
    \new Staff = "dummy" { \time 3/4 \relative {s2.}}
    \music
  }
  \midi{}
}
