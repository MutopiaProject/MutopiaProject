#(ly:set-option 'relative-includes #t)

layoutStaffSize = #16.5
#(set-global-staff-size #'layoutStaffSize)
\include "common/bwv0036b.ily"
\include "common/singleInstScore.ily"

\paper {
  outer-margin = 1.85\cm
  inner-margin = 1.85\cm
}
\header {
  scoretype = \continuoName
}

\include "parts/bwv0036b_01.ily"
\bookpart {
  \include "common/title_section.ily"
  \singleInstScore \layoutStaffSize \pieceName
                   << \continuoMusic \globalMarksBreaks >>
}

\include "parts/bwv0036b_02.ily"
\bookpart {
  \paper {
    system-count = #5
  }
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \new Staff = "Ossia" \with {
        \override StaffSymbol.staff-space = #(magstep -2)
        fontSize = #-2
      } {
        \set Staff.instrumentName = \markup { \larger \tenorName }
        \new Voice = "tenorsnippet" {
          \tenorMusic
        }
      }
      \new Lyrics \lyricsto "tenorsnippet" { \tenorLyrics }
      \new Staff = "main" <<
        \compressFullBarRests
        \new Voice { \continuoMusic }
        \new FiguredBass \contFigBass
        \new NullVoice \globalMarksBreaks
      >>
    >>
  }
}

\include "parts/bwv0036b_03.ily"
\bookpart {
  \singleInstScore \layoutStaffSize \pieceName
                   << \continuoMusic \globalMarksBreaks >>
}

\include "parts/bwv0036b_04.ily"
\bookpart {
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \new Staff = "Ossia" \with {
        \override StaffSymbol.staff-space = #(magstep -2)
        fontSize = #-2
      } {
        \set Staff.instrumentName = \markup { \larger \altoName }
        \context Voice = "altosnippet" \altoMusic
      }
      \new Lyrics \lyricsto "altosnippet" { \altoLyrics }
      \new Staff = "main" <<
        \compressFullBarRests
        \new Voice { \continuoMusic }
        \new FiguredBass \contFigBass
        \new NullVoice \globalMarksBreaks
      >>
    >>
  }
}

\include "parts/bwv0036b_05.ily"
\bookpart {
  \singleInstScore \layoutStaffSize \pieceName
                   << \continuoMusic \globalMarksBreaks >>
}

\include "parts/bwv0036b_06.ily"
\bookpart {
  \paper {
    system-count = #5
  }
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \new Staff = "Ossia" \with {
        \override StaffSymbol.staff-space = #(magstep -2)
        fontSize = #-2
      } {
        \set Staff.instrumentName = \markup { \larger \sopranoName }
        \new Voice = "sopranosnippet" {
          \sopranoMusic
        }
      }
      \new Lyrics \lyricsto "sopranosnippet" { \sopranoLyrics }
      \new Staff = "main" <<
        \compressFullBarRests
        \new Voice { \continuoMusic }
        \new FiguredBass \contFigBass
        \new NullVoice \globalMarksBreaks
      >>
    >>
  }
}

\include "parts/bwv0036b_07.ily"
music = << \continuoMusic \continuoMarks >>
\bookpart {
  \paper {
    system-count = #17
  }
  \singleInstScore \layoutStaffSize \pieceName
                   << \continuoMusic \globalMarksBreaks >>
}

\include "parts/bwv0036b_08.ily"
\bookpart {
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \new Staff = "main" <<
        \compressFullBarRests
        \new Voice { \continuoMusic }
        \new FiguredBass \contFigBass
        \context NullVoice = "figBassWarning" \figBassWarning
        \new NullVoice \globalMarksBreaks
        \new Voice {
          s2 s1*31
          <<
            \new Staff = "tenorOssia" \with {
              alignAboveContext = #"main"
              \override StaffSymbol.staff-space = #(magstep -2)
              fontSize = #-2
              \autoBeamOff
            } {
              \new Voice = "tenorRecit" {
                \clef "treble_8" \key d \major
                r4 \tenorRecitMusic
              }
            }
            \new Lyrics \with { alignBelowContext = #"tenorOssia" }
              \lyricsto "tenorRecit" { \tenorRecitLyrics }
          >>
          s4 s2 s1*7
          <<
            \new Staff = "altoOssia" \with {
              alignAboveContext = #"main"
              \override StaffSymbol.staff-space = #(magstep -2)
              fontSize = #-2
              \autoBeamOff
            } {
              \new Voice = "altoRecit" {
                \clef "treble" \key d \major
                r4 \altoRecitMusic
              }
            }
            \new Lyrics \with { alignBelowContext = #"altoOssia" }
              \lyricsto "altoRecit" { \altoRecitLyrics }
          >>
          s4 s2 s1*7
          <<
            \new Staff = "sopranoOssia" \with {
              alignAboveContext = #"main"
              \override StaffSymbol.staff-space = #(magstep -2)
              fontSize = #-2
              \autoBeamOff
            } {
              \new Voice = "sopranoRecit" {
                \clef "treble" \key d \major
                r8 \sopranoRecitMusic s16
              }
            }
            \new Lyrics \with { alignBelowContext = #"sopranoOssia" }
              \lyricsto "sopranoRecit" { \sopranoRecitLyrics }
          >>
        }
      >>
    >>
  }
}

