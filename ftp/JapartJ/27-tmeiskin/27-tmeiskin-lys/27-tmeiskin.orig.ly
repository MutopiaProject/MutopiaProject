% This is my first "original notation" typesetting. I've tried to closely
% reproduce the original Odhecaton. No fictas are added, so the generated
% midi may not sound correct.

\version "2.10.33"
\include "english.ly"

\header {
 mutopiatitle = "Tmeiskin"
 title = \mutopiatitle
 subtitle = "(original notation)"
 composer = "Jean Japart (fl. 1474-1507)"
 mutopiacomposer = "JapartJ"
 mutopiainstrument = "Recorder"
 source = "Facsimile of Odhecaton Canti A, 3rd edition"
 style = "Renaissance"
 copyright = "Public Domain"
 maintainer = "Allen Garvin"
 maintainerEmail = "allen.garvin@dal.tribalddb.com"
 maintainerWeb = "http://agarvin.nitfol.com/music"
 lastupdated = "2009/Dec/26"
 filename = "27-tmeiskin.orig.ly"

 footer = "Mutopia-2010/01/09-1734"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global = {
  \key g \dorian
  \time 2/2

  \override Staff.TimeSignature #'style = #'mensural
  \override Voice.NoteHead #'style = #'petrucci
  \override Voice.Rest #'style = #'neomensural

  \set Staff.printKeyCancellation = ##f
  \cadenzaOn % turn off bar lines
  #(set-accidental-style 'forget)
}

discantusNotes = \relative c'' {
    \set Staff.instrumentName = "Discantus  "
    % incipit
    \clef "petrucci-c1"
    g1 g2 g  g\breve  g\breve bf1. a4 g f\breve
    a1 a c1. bf2 a1 g\breve 
    f1 g\breve r1 g bf bf bf a\breve
    d\breve c1 d1. c2 bf1 a bf1. a4 g f2 bf1 a2 
    bf g1 a2.  g4 f e f1 g\breve 
    r1 d e e d2. e4 f2 g1 e1 a2 f bf1  \bar "" \break
    a1 g4 f g1 a r2 a  c1. bf2 
    a1 g2 a1 c2. bf4 a1 g4 f e1 d\breve 
    r1 d f1. g2 a bf c1.
    bf2 bf1.  a4 g a2 g4 a bf\breve 
    r1 f bf a g g c1. bf2 a bf1 a2 
    g bf2. a4 g1 f4 e f1 
    g\longa 
    \bar "|."
}

altusNotes = \relative c' {
    \set Staff.instrumentName = "Altus  "
    \clef "petrucci-c3"
    r\longa r\breve
    d1 d2 d2 
    d\breve f1. e4 d
    c\breve 
    f1 d1. d2 d1 
    bf1. c2 d ef1
    d4 c d1 d1. e2 f1 f1
    a1. g4 f e2 a f\breve
    r1 f d bf f' f
    d2 e1 c1 d1 d1 e d4 c \bar "" \break
    bf2 c d1 g, c f,2 bf1 g c a g2 d'1. e2 
    d1 f f 
    f f f r2 f1 e f a2 a1 f\longa 
    d1 bf c\breve r f\breve d1. e4 f g2 f d\breve
    f1 
    #(set-accidental-style 'default)
    ef ef 
    #(set-accidental-style 'forget)
    c2 f d g f g2. f4 f2 d1 e
    d\breve d\longa
    \bar "|."
}

tenorNotes = \relative c' {
     \set Staff.instrumentName = "Tenor  "
     % incipit
     \clef "petrucci-c4"
    r\breve g1 g2 g2 g\breve g\breve bf1. a4 g 
    f\breve a1 a c1. bf2 a1 a1 g\longa 
    r1 g bf c d f e e d\longa
    r1 d d c2 c bf1 c a a g\longa
    r1 g bf bf c c \bar "" \break
    d1. c2 bf1 bf1 a\breve 
    r1 a c c c c2 c2 c1 c d\longa
    c1 d f1. e2 d1 bf c c bf\longa
    r1 f bf bf a g d'1. c2 
    bf1 c a a g\longa
    \bar "|."
}

bassusNotes = \relative c {
    \set Staff.instrumentName = "Bassus   "
    \clef "petrucci-f"
    g1. a2 bf c1 bf2 a1. bf2 g\breve
    r d'1. c4 bf a1 f'1. e2 g1 d\breve
    ef1. d4 c bf2 c1 bf4 a g1 g'\breve
    f1 d\breve a' bf1. a2 g1 f g1. f4 e \bar ""\break
    d2. c4 f1 g2 e1 f2. e4 d c d1
    bf2 c2. d4 ef1 d4 c bf1  c c bf2. c4 
    d2 e1 c f2 d g2. d4 f2 g ef g1 d f f f f e2 f1 \bar ""\break
    a2. g4 f1 e4 d a'1 bf\longa 
    bf1. a4 g f\breve g f 
    bf,1. c4 d ef2 d2. c4 bf a g1 d'
    e\breve \[ f1 g1 \] d2 g2. d4 f2 g1 c,
    d\breve g,\longa \bar "|."
    
}
\score {
  \context Staff = "one" <<
    \new Voice =
      "discantusNotes" << \global \discantusNotes >>
   >>
}
\score {
  \context Staff = "one" <<
    \new Voice =
      "altusNotes" << \global \altusNotes >>
   >>
}
\score {
  \context Staff = "one" <<
    \new Voice =
      "tenorNotes" << \global \tenorNotes >>
   >>
}
\score {
  \context Staff = "one" <<
    \new Voice =
      "bassusNotes" << \global \bassusNotes >>
   >>
}

\layout {
  \context {
    \Staff
    \consists Custos_engraver
    \override Custos #'style = #'mensural
  }
  \context { 
    \Voice
    \remove Ligature_bracket_engraver
    \consists Mensural_ligature_engraver
  }
}

