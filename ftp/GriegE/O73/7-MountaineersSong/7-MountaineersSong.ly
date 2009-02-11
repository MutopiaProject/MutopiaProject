\version "2.12.1"
\include "english.ly"
#(ly:set-option 'point-and-click #f)

\header {
	title = "Lualåt"
        subtitle = "The Mountaineer's Song"
        subsubtitle = \markup{\italic{"Moods"}, Op. 73, No. 7}
        composer = "Edvard Grieg (1843-1907)"

        mutopiatitle = "Lualåt (The Mountaineer's Song)"
        mutopiacomposer = "GriegE"
        mutopiaopus = "Op. 73, No. 7"
        mutopiainstrument = "Piano"
        source = "C.F. Peters, 1907"
        style = "Romantic"
        copyright = "Public Domain"
        maintainer = "Ted Stanion"

 footer = "Mutopia-2009/02/11-1628"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 16)
\paper {
%        annotate-spacing = ##t
        page-top-space = #0.0
        line-width = 7.5\in
        top-margin = 0.5\in
        bottom-margin = 0.5\in
        ragged-last-bottom = ##f
        ragged-bottom = ##f
        after-title-space = #1.0
}

global = {
  \key g \minor
  \numericTimeSignature
  \time 2/2
}

treble = \relative c'' {
  \global
  \once \override Score.RehearsalMark #'break-align-symbol = #'time-signature
  \once \override Score.RehearsalMark #'self-alignment-X = #left
  \once \override Score.RehearsalMark #'extra-offset = #'(5.0 . 0.0)
  \mark \markup{ \bold \fontsize #-1 "Allegretto semplice"}
  \clef treble

  \barNumberCheck #1
  \oneVoice
  | R1
  | R1
  | g4( g' \grace {f16[ g]} f4 d8 bf
  | g4 g' f2)
  | g,8( bf d g f g d bf
  | g8 bf d g f2)

  \barNumberCheck #7
  | g,4( d'cs c8 b
  | d,4 bf' g2)~
  | g8( a bf ef d bf d cs
  | a8 cs c b d,4 bf'
  | g2)( d4 bf'
  | g2 d4 bf'

  \barNumberCheck #13
  | g1)~
  | g2~g4 r4

\break

\repeat volta 2 {
  | g4( g' fs-> e8 c
  | g4 g' e2)
  | c8( d e g e d c g
  | c8 d e g) r2

  \barNumberCheck #19
  | d,4( d' cs bf8 g
  | d4 d' bf2)
  | g8( a bf d bf a g d
  | g8 a bf d) r2
  | f,4( f' e-> d8 bf
  | f4 f' d2)

  \barNumberCheck #25
  | bf8( c d f d c bf f
  | bf8 c d f) r2
  | c,4( c' b af8 f
  | c4 c' af2)
  | f8( g af c af g f c

  \barNumberCheck #30
  | f8 g af c) r2
  | ef,4( ef' d-> c8 af
  | ef4 ef' c2)
  | af8( bf c ef c bf af ef
  | af8 bf c ef) r2
  | R1
\pageBreak

  \barNumberCheck #36
  | r8 e8( fs a fs e d a
  | d8 e fs a) r2
  | R1
  | r8 bf8( c ef c bf af ef
  | af8 bf c ef) r2
  | R1

  \barNumberCheck #42
  | r8 e8( fs a fs e d a
  | d8 e fs a) r2
  | r2 d,8( e fs a)
  | R1
\break
  | d,,2(~^\markup { \italic tranquillo } d8 ef cs a
  | d2~ d8 ef cs a

  \barNumberCheck #48
  | d8^\markup { \italic "un poco rit." } ef cs a d ef cs a
  | d8 ef cs a d ef cs a)
  | d1->~(
  | d2 \grace { cs16[ d] } cs4 bf)
  | R1^\markup { \italic "a tempo" }
  | R1
  | g4( g' \grace {f16[ g]} f4 d8 bf

  \barNumberCheck #55
  | g4 g' f2)
  | g,8( bf d g f g d bf
  | g8 bf d g f2)
  | g,4( d'cs c8 b
  | d,4 bf' g2)~
  | g8( a bf ef d bf d cs

  \barNumberCheck #61
  | a8 cs c b d,4 bf'
  | g2 d4 bf'
  | g2 d4 bf'
  | g1)~
  | g2~g4 r4
}

\break

  | b2\rest \voiceOne e4( d'
  | bf2 e,4 d'

  \barNumberCheck #68
  | bf2 e,4 d'
  | bf2) r2

\oneVoice
  | R1
  | r2 ef,,!4( d'
  | bf2) r2
  | R1
  | r2^\markup { \italic {più lento} } \clef bass d,,4( bf'
  | g1)-\fermata
  \bar "|."
}

bassOne = \relative c {
  \global
  \clef bass

  \barNumberCheck #1
  | d1^>
  | d1^>
  | d1
  | d1
  | d1
  | d1

  \barNumberCheck #7
  \stemUp
  \slurUp
  | d2( ef
  | e2 ef)
  | d2( ef4 e
  | f fs g2)(
  | d4 bf' g2
  | d4 bf' g2

  \barNumberCheck #13
  | d4 bf' g2)~
  | g2~g4 d4\rest
\repeat volta 2 {
  | f2\rest g4( g'
  | fs4-> e8 c g4 g'
  | e2) c8( d e g
  | e8 d c g c d e g)

  \barNumberCheck #19
  | f,2\rest d4( d'
  | cs4 bf8 g d4 d'
  | bf2) g8( a bf d
  | bf8 a g d g a bf d)
  | f,2\rest f4( f'
  | e-> d8 bf f4 f'

  \barNumberCheck #25
  | d2) bf8( c d f
  | d c bf f bf c d f)
  | f,2\rest  c4( c'
  | b4 af8 f c4 c'
  | af2) f8( g af c

  \barNumberCheck #30
  | af g f c f g af c)
  | f,2\rest ef4( ef'
  | d-> c8 af ef4 ef'
  | c2) af8( bf c ef
  | c bf af ef af bf c ef)
  \oneVoice
  | R1
  \voiceOne

  \barNumberCheck #36
  | f,2\rest r8 e'8( fs a
  | fs8 e d a d e fs a)
  \oneVoice
  | R1 \clef treble
  \voiceOne
  | d2\rest r8 bf8( c ef
  | c bf af ef af bf c ef)
  \oneVoice
  | R1 \clef treble
  \voiceOne

  \barNumberCheck #42
  | r2 r8 e8( fs a
  | fs8 e d a d e fs a)
  \oneVoice
  | R1
  | R1
  | R1
  | R1

  \barNumberCheck #48
  | R1
  | R1
  | R1
  | R1
  \voiceOne
  \clef bass
  | d,,,1^>
  | d1^>
  | d1

  \barNumberCheck #55
  | d1
  | d1
  | d1
  \stemUp
  \slurUp
  | d2( ef
  | e2 ef)
  | d2( ef4 e

  \barNumberCheck #61
  | f fs g2)(
  | d4 bf' g2
  | d4 bf' g2
  | d4 bf' g2)~
  | g2~g4 d4\rest
}

  | s1
\change Staff = "Staff_pfUpper"
\voiceTwo
  | e'4( d' bf2

  \barNumberCheck #68
  | e,4 d' bf2
  | e,4 d' bf2)
\change Staff = "Staff_pfLower"
\oneVoice
  | R1
\voiceOne
  | R1
  | ef,,!4( d' bf2)
\oneVoice
  | R1
  | r2 g,,2(
  | d'4 bf'4 g2)-\fermata
}

bassTwo = \relative c {
  \global
  \clef bass

  \barNumberCheck #1
  \stemDown
  \slurDown
  | g2( a)
  | bf2( a)
  | g2( a)
  | bf2( a)
  | g2( a)
  | bf2( a)

  \barNumberCheck #7
  | g1~
  | g1
  | g1~
  | g1~
  | g1~
  | g1~

  \barNumberCheck #13
  | g1~
  | g2~g4 s4
\repeat volta 2 {
  | <c, g'>1~
  | <c g'>1~
  | <c g'>1~
  | <c g'>1

  \barNumberCheck #19
  | <g d'>1~
  | <g d'>1~
  | <g d'>1~
  | <g d'>1
  | <bf f'>1~
  | <bf f'>1~

  \barNumberCheck #25
  | <bf f'>1~
  | <bf f'>1
  | <f c'>1~
  | <f c'>1~
  | <f c'>1~

  \barNumberCheck #30
  | <f c'>1
  | <af ef'>1~
  | <af ef'>1~
  | <af ef'>1~
  | <af ef'>1
  | s1

  \barNumberCheck #36
  | <d a'>1~
  | <d a'>1
  | s1 \clef treble
  | <af'' ef'>1~
  | <af ef'>1
  | s1

  \barNumberCheck #42
  | <d a'>1~
  | <d a'>1
  | s1*4

  \barNumberCheck #48
  | s1*4
  \clef bass
  \stemDown
  \slurDown
  | g,,2( a)
  | bf2( a)
  | g2( a)

  \barNumberCheck #55
  | bf2( a)
  | g2( a)
  | bf2( a)
  | g1~
  | g1
  | g1~

  \barNumberCheck #61
  | g1~
  | g1~
  | g1~
  | g1~
  | g2~ g4 s4
}

  | d'2\rest <c g'>2~
  | <c g'>1~

  \barNumberCheck #68
  | <c g'>1~
  | <c g'>1~
  | s1
  | r2 <c, g'>2~
  | <c g'>1
  | s1*3
}

piuPP = \markup { \italic {più} \dynamic pp }
dynamics = {
  \override DynamicText #'self-alignment-X = #-1
  
  \barNumberCheck #1
  \override DynamicText #'extra-offset = #'(0.0 . -0.5)
  | s1\p
  | s1*7
  \barNumberCheck #9
  | s4 s4\< s2
  | s4. s8\! s2
  | s2 s2\>
  | s1
  \barNumberCheck #13
  | s2 s2\!
  | s1
  \barNumberCheck #15
\repeat volta 2 {
  \override DynamicText #'extra-offset = #'(0.0 . -2.5)
  | s1\ff
  | s1*3
\barNumberCheck #19
  | s1\pp
  | s1*3
  | s1\ff
  | s1*3
  | s1\pp
  | s1*3
  | s1\ff
  | s1*4
\barNumberCheck #36
  | s1\pp
  | s1*2
  \once \override TextScript #'extra-offset = #'(0.0 . -2.5)
  | s1-\piuPP
  | s1*2
  | s1\ppp
  | s1*3
  \override DynamicText #'extra-offset = #'(0.0 . -0.5)
  | s1\p
  | s2 s2\<
  | s1
  | s2 s8 s8\! s4
  | s1\f
  | s4\> s2 s4\!
  | s1 \p
  | s1*13
}

  \barNumberCheck #66
  \override DynamicText #'extra-offset = #'(0.0 . -2.5)
  | s2 s2\f
  | s1
  | s2. s4\>
  | s2. s4\!
  | s1
  | s2 s2-\markup { \dynamic p \italic "ritard. e morendo" }
  | s1
  | s1
  | s2 s2\pp
  | s1
  \barNumberCheck #76
}

pedal = {
\override SustainPedal #'self-alignment-X = #-1
\override UnaCordaPedal #'self-alignment-X = #-1
\override SustainPedal #'outside-staff-priority = #2
\override UnaCordaPedal #'outside-staff-priority = #1
  | s1*10
  | s1\sustainOn
  | s1*3
  \barNumberCheck #15

\repeat volta 2 {
  | s1 \sustainOn
  | s1*2
  | s4. s8\sustainOff s2
  | s1\sustainOn_\unaCorda
  | s1*2
  | s4. s8\sustainOff s2
  | s1 \sustainOn\treCorde
  | s1*2
  | s4. s8\sustainOff s2
  | s1\sustainOn\unaCorda
  | s1*2
  | s4. s8\sustainOff s2
  | s1\sustainOn\treCorde
  | s1*2
  | s4. s8\sustainOff s2
  | s1
  \barNumberCheck #36
  | s1\sustainOn\unaCorda
  | s4. s8\sustainOff s2
  | s1
  | s1\sustainOn
  | s4. s8\sustainOff s2
  | s1
\barNumberCheck #42
  | s1\sustainOn
  | s1*2
  | s2. s4\sustainOff
  | s1\treCorde
  | s1*15
  | s1\sustainOn
  | s1*3
}

  \barNumberCheck #66
  | s2 s2\sustainOn
  | s1*3
  | s1\sustainOff\unaCorda
  | s2 s2\sustainOn
  | s1
  | s2. s4\sustainOff
  | s2 s2\sustainOn
  | s1
  \barNumberCheck #76

}


\score {
  \new PianoStaff = "PianoStaff_pf" <<
    #(set-accidental-style 'piano)
    \new Staff = "Staff_pfUpper" << \treble \\ \dynamics >>
    \new Staff = "Staff_pfLower"  << \bassOne \\ \bassTwo >>
    \new Dynamics = "pedal" \pedal
  >>

  \layout {
    % define Dynamics context
    \context {
      \type "Engraver_group"
      \name Dynamics
      \alias Voice
      \consists "Output_property_engraver"
      \consists "Piano_pedal_engraver"
      \consists "Script_engraver"
      \consists "New_dynamic_engraver"
      \consists "Dynamic_align_engraver"
      \consists "Text_engraver"
      \consists "Skip_event_swallow_translator"
      \consists "Axis_group_engraver"

      pedalSustainStrings = #'("Ped." "*Ped." "*")
      pedalUnaCordaStrings = #'("una corda" "" "tre corde")
      \override DynamicLineSpanner #'Y-offset = #0
      \override TextScript #'font-shape = #'italic
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1.0 . 1.0)
    }
    % modify PianoStaff context to accept Dynamics context
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \new Staff = "Staff_pfUpper" << \treble \\ \dynamics \\ \pedal >>
    \new Staff = "Staff_pfLower" << \bassOne \\ \bassTwo \\
                                    \dynamics \\ \pedal >>
  >>
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 2)
    }
  }
}
