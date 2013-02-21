\include "deutsch.ly"

\header{
filename = 	  "Fischer_EratoAllemande.ly"
title = 	  "Muse of poetry"
subtitle =	  "Erato"
subsubtitle =	  "Allemande"
opus =            "Muse of poetry, erotic poetry in particular (Erato)"
composer = 	  "J. K. F. Fischer"
style =	          "Baroque"
maintainer = 	  "Rune Zedeler"
maintainerEmail = "rz@daimi.au.dk"
copyright = 	  "Public Domain"
mutopiatitle =    "Erato Allemande"
mutopiacomposer = "FischerJKF"
mutopiainstrument = "Harpsichord, Piano"
source =          "Unknown"

 footer = "Mutopia-2013/02/21-129"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\version "2.16.0"

su = { \change Staff = up}
sd = { \change Staff = down}

ru = \override Rest   #'staff-position = #4
rn = \override Rest   #'staff-position = #0

mela =  \relative c'' {\partial 16 e16 | 
    \repeat "volta" 2 {
       << {e8.\arpeggio h16} \\ <h g>8.\arpeggio >> g16 h e, g a4~a16 a g fis |
       <<g4. \\ {r16 e h4}>> <g' e h>8 <a e c> e'16 c c a a e |
       fis d fis a d4~d16 d c h <<{c8. c16} \\ {r16 e, d8}>> |
       <h' g d>8. h16 <<{a8. a16 g e c'8~c h ~} \\ {r16 cis, dis8 e4 fis8. g16}>> |
    }
    \alternative {
       {<<{h16 a g a a8.\trill h16 h4.} \\ {e,2 r16 fis dis8}>> r16 e'}
       {<<{h16 a g a a8.\trill h16 h4. r16 h} \\ {e,2 r16 fis dis8~dis8. r16}>> \break}
    }
}
melb =  \relative c'' {
    \repeat "volta" 2 {
       \voiceOne a4~a16 \oneVoice fis g e fis d' a h c?8 h16 a | h g h d << {f8. f16} \\ {r16 a, g r }>> e' g, a g e' g, \voiceOne a g | \oneVoice fis? c' h a h8 a16 g \voiceOne g4 \oneVoice r16 h c h |
       a e' e a, a fis' fis a, g4 r16 a a fis | dis4 r16 h' h dis, e4. <dis? fis>8 | <<{g16 fis g a <g e>8 <fis dis>} \\ {e8[ e]}>>
    }
    \alternative { {\voiceOne e4. r16 h'} {e,4. \bar"|."}}
}

melbb =  \relative c' {
    \override VoiceFollower   #'style = #'dashed-line
    \repeat "volta" 2 {
       \voiceTwo r16 e cis e \showStaffSwitch \sd \voiceOne a,4 ~ \hideStaffSwitch a8 fis r16 g d'8 ~ |d4 c8 d c4. \su \voiceTwo e8 | \sd \voiceOne  a,8[ g]~ g[ fis] \su \voiceTwo r16 d' h8 s4 |
       s2 r16 e e h c?4 | h2~h16 h a g a8 c | \voiceFour h4 ~ \voiceTwo h8. a16 ~
    }
    \alternative { {a16 fis gis8~gis8. s16} {a16\repeatTie fis gis8~gis8} }
}

basa =  \relative c { \partial 16 r16 |
    \repeat "volta" 2 {
       <e g h>4. <e g>8 <<{r16 fis a c h4} \\ {e,4 dis}>> |
       e8. h16 g h e, e' c4. <<{a'8 | d,4 r16 d g h} \\ {c,8 | c4 h}>> e4. fis8 |
       g16 d g,8~g fis e8. e'16 d? c? d h |
    } 
    \alternative { {c4. c8 <<{r8 r16 fis16 h a g16. fis32 } \\ {h,4. r8}>>}
                   {c4. c8 <<{r8 r16 fis16 h4 } \\ {h,4 r16 h e d}>>}
    }
}

basb =  \relative c {
    \repeat "volta" 2 {
        \voiceTwo cis4. cis8 d4 e8 fis | g4 a8 h c4. c,8 | d g, d'4 \oneVoice g8. d16 g,8 g'~ |
	<< {\voiceOne g4 fis h a ~ | a16 a g fis g4 e} \new Voice {\voiceTwo cis4 dis e a, h4. h8 c4~ c16 c h a |  h8[ a]  h[ h] } >>
    }
    \alternative { {e8. h16 e, h' e d?} {e8. h16 e,8 \bar "|."}}
}

\score {
\context PianoStaff
 
<<
   \set PianoStaff.instrumentName = \markup {\huge \italic 2.}
   \set PianoStaff.connectArpeggios = ##t
   \context Staff = "up"   {
      \override Staff.Script   #'padding = #0.5
      \time 4/4 \key e \minor \clef G \mela <<\melb \new Voice \melbb>>}
   \context Staff = "down" {
      \time 4/4 \key e \minor \clef F \basa \basb}
>>
\layout {
    % line-width = 18.0 \cm
}
}

\score {
 
\applyMusic #unfold-repeats <<
   \context Staff = "up"   {
      \set Staff.midiInstrument = "harpsichord"
      \time 4/4 \key e \minor \mela <<\melb \melbb>>}
   \context Staff = "down" {
      \set Staff.midiInstrument = "harpsichord"
      \time 4/4 \key e \minor \basa \basb}

>>

  \midi {
    \tempo 4 = 54
    }
}
