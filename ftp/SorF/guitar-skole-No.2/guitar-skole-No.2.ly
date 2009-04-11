\version "2.12.2"
%#(set-global-staff-size 17)

\paper
{
%  annotate-spacing = ##t
%  paper-width = 20.98\cm
%  paper-height = 33.9\cm
%  Note: If paper-width is manually set, line-width, left-margin, indent, and short-indent may have to be adjusted as well.
  indent=10\mm
%  top-margin = 1.4\cm
%  bottom-margin = 1.4\cm
%  page-count = 1 will often cause warnings
%  print-page-number = ##t
%  print-first-page-number = ##t
}

\header
{
  dedication = ""
  title = "Andantino No. 2"
  subtitle = "Guitar-Skole af A. Eggers"
  %subsubtitle = "No. 2"
  poet = ""
  instrument = ""
  composer = "Fernando Sor"
  meter = ""
  arranger = ""
  piece = ""
  opus = ""
  breakbefore = ##f
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  source = "Guitar Skole af A.Eggers med 24 Smaastykker af Carulli,Sor,Mertz, Carcassi og Costa samt 10 Sange med Guitaraccompagnement - The Royal Library (Det Kongelige Bibliotek) (Copenhagen Denmark)"
  style = "Classical"
  maintainer = "Louie van Bommel"
 footer = "Mutopia-2009/04/11-1645"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout
{
  \context
  {
    \Score
%   \override whatever
  }
  \context
  {
    \Staff
%    \override TimeSignature #'style = #'numbered
%    \override StringNumber #'transparent = ##t
%    \override VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 2)
  }
    \context
    {
      \GrandStaff
      \accepts "Lyrics"
    }
  \context
  {
    \Voice
  }
  \context
  {
    \TabStaff
%     \override TimeSignature #'style = #'numbered
      \override Stem #'transparent = ##t
      \override Beam #'transparent = ##t
      \override Dots #'transparent = ##t
      \override Rest #'transparent = ##t
   }
  \context
  {
    \TabVoice
      %\remove "Phrasing_slur_engraver"
      %\remove "Slur_engraver"
      %\remove "Script_engraver"
      %\remove "Auto_beam_engraver"
      \remove "Text_engraver"
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Start Music%%%%%%%%%%%%%%%
#(define RH rightHandFinger)

staffOneVoiceOneNotes =
  \transpose c c'
{
  \tempo "Andantino"
  %1
  c'4 g c' e'
  g'4-4\RH #4 e'-\RH #3 c'-\RH #2 g-\RH #1
  a4-2-\RH #1 f'-1-\RH #3 d'-4-\RH #2 c'-\RH #1
  b4-\RH #2 d'-4-\RH #2 g2-\RH #1
  c'4-\RH #2 g-\RH #1 c'-\RH #2 e'-\RH #3 \break
  
  %6
  g'4-4-\RH #2 e'-\RH #3 c'-\RH #2 g-\RH #1
  a4-2-\RH #1 d'2-4-\RH #2 b4-\RH #2
  c'1-\RH #2
  d'2-4-\RH #2 e'-\RH #3
  d'4-4-\RH #2 g-\RH #1 g-\RH #1 g-\RH #1 \break
  
  %11
  d'2-\RH #2 e'-\RH #3
  d'4-\RH #2 g g g
  b2 c'2
  d'2-4-\RH #2 e'-\RH #3
  b4-\RH #2 b-\RH #1 c'-\RH #2 a-\RH #1
  g4-\RH #1 g-\RH #1 g-\RH #1 g-\RH #1 \break
  
  %17
  g'2-4-\RH #3 e'-\RH #3
  f'2-\RH #3 d'-4-\RH #2
  e'2-\RH #3 c'-\RH #2
  b4-\RH #2 g-\RH #1 g-\RH #1 g-\RH #1
  g'2-4-\RH #3 e'-\RH #3 \break
  
  %
  f'2-\RH #3 d'-4-\RH #2
  e'2-\RH #3 c'-\RH #2
  b2-\RH #2 r2
  c'4-\RH #2 g4-\RH #1 c'-\RH #2 e'-\RH #3
  g'4-4-\RH #3 e'-\RH #3 c'-\RH #2 g-\RH #1 \break
  
  a-2-\RH #1 f'-1-\RH #3 d'-4-\RH #2 c'-\RH #1
  b4-\RH #2 g-\RH #1 a-\RH #1 b-\RH #2
  c'4-\RH #2 g-\RH #1 c' e'~
  e'4 a-2 d'-4 f'-1
  e'4-\RH #2 c'-\RH #1 d'-4-\RH #2 b-\RH #1
  c'2~ c'4 r4 \bar "|."
  
  
}
staffOneVoiceTwoNotes =
  \transpose c c'
{
  c1~
  c2. e4
  f1-3
  g2 r4 f4-3
  e1~

  %6
  e2. e4
  f2-3-\RH #3 g2
  c4 g e-> c
  b,4-2-\RH #2 g c g
  b,2-2-\RH #2 r2

  %11
  b,4 g c g
  b,2 r2
  g,4 g a, g
  b,4-2-\RH #2 g c4 g
  d2 d
  g,2 r2

  %17
  e2-2 c
  d2 b,-2-\RH #2
  c2 e
  d2 r2
  e2-2-\RH #2 c
  
  %22
  d2 b,2-2-\RH #2
  c2 a,
  g,4-3-\RH #3 g f-4-> d->
  c1~
  c2.

  %27
  e4
  f1-3-\RH #3
  g4 r f2
  e1
  f1-3-\RH #3
  g2-> g,-3-\RH #3
  c4 g c r4
}
staffOneVoiceThreeNotes =
  \transpose c c'
{
  s1 s1 s1 s1 s1 s1 s1 s1  s1 s1 s1 s1  s1 s1 s1 s1 
  %17
  b4\rest g2-\RH #1 g4-\RH #1
  a4\rest g2-\RH #1 g4-\RH #1
  g4\rest g2-\RH #1 g4-\RH #1
  s1
  b4\rest g2-\RH #1 g4-\RH #1

  a4\rest g2-\RH #1 g4-\RH #1
  g4\rest g2-\RH #1 g4-\RH #1
}
staffTwoVoiceOneNotes =
{
}
staffTwoVoiceTwoNotes =
{
}

myChords = \chordmode
{
}
myMainWords = \lyricmode
{
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%End of Music%%%%%%%%%%%%%%

\score
{
  <<

    \new ChordNames
    {
      \set chordChanges = ##t
      \myChords
    }

    % \new GrandStaff
    <<

      \new Staff = "staffOne"
      {
        <<
          \clef treble

          \new Voice = "staffOneVoiceOne"
          {
            \set Staff.midiInstrument = "acoustic guitar (nylon)"
            \voiceOne % this is a lilypondism, not mine
            \staffOneVoiceOneNotes
          }

          \new Voice = "staffOneVoiceTwo"
          {
            \set Staff.midiInstrument = "acoustic guitar (nylon)"
            \voiceTwo % this is a lilypondism, not mine
            \staffOneVoiceTwoNotes
          }


          \new Voice = "staffOneVoiceThree"
          {
            \set Staff.midiInstrument = "acoustic guitar (nylon)"
            \voiceThree % this is a lilypondism, not mine
            \staffOneVoiceThreeNotes
          }

          \new Lyrics % \lyricsto "staffOneVoiceOne"
          {
            \myMainWords
          }

        >>
      }
%{
      \new Staff = "staffTwo"
      {
        <<
          % \clef bass

          \new Voice = "staffTwoVoiceOne"
          {
            \set Staff.midiInstrument = "acoustic guitar (nylon)"
              % this is a lilypondism, not mine
            \staffTwoVoiceOneNotes
          }

        >>
      }
%}
    >>

  >>
  % layout can be in a score as well as outside
  \layout { }
  \midi
  {
    \context
    {
      \Voice
      %\remove "Dynamic_performer"
    }
    \context
    {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
