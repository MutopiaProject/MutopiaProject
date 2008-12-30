#(ly:set-option 'point-and-click #f)
\version "2.10.0"
\header {
    title = "Oats and Beans"
    subtitle = "(Children’s Choosing Game)"
    composer = "trad., arr. L.E. Broadwood"
   
 mutopiatitle = "Oats and Beans"
 mutopiacomposer = "Traditional"
 mutopiaarranger = "L. E. Broadwood (1858-1929)"
 mutopiainstrument = "Voice and Piano"
 date = "1893"
 source = "English County Songs"
 style = "Folk"
 copyright = "Public Domain"
 maintainer = "Nigel Holmes"
 maintainerEmail = "nigel.holmes@thesaurus.badw.de"
 lastupdated = "17.12.06"


 footer = "Mutopia-2006/12/21-888"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


#(set-global-staff-size 18)

\paper  {
    %#(set-paper-size "a4")
    raggedbottom = ##t 
    }

melody = \relative c'' \context Voice = "singer"
{
    \autoBeamOff
    \set Staff.midiInstrument = "flute"
     \key c\major
     \time 6/8
     \clef treble 
    g4^\markup{\italic Allegro.} g8 e4 c8 f4 a8 g4 g8 g4 g8 e4 c8 f8 f a g4. 
    c4 c8 b4 b8 a4 a8 g4 g8 f4 f8 e4 e8 d8 d d c4.
    g'4 g8 e4 c8 d4. c4.
     \bar "||"
}

text = \lyricmode {
    \set stanza = "1."
   Oats and beans and bar -- ley grows, As you and I and ev -- ’ry one knows,
    Oats and beans and bar -- ley grows, As you and I and ev -- ’ry one knows, 
    Wait -- ing for the part -- ner.
}

stemExtend =  \override Stem #'length = #22
noFlag = \once \override Stem #'flag-style = #'no-flag
pianoRH = \relative c'{
    \key c\major    
    <c g'>4. <c g'> <c f> <c g'> <c g'> <c g'> <c f> <c g'> <c g'>2. 
    <c a'>4. <c g'> \tieUp <c f>4 ~<b f'>8 <c e>4. <c d>4~<b d>8 <c e>4. 
    <c g'> <c e> %{\once \override NoteColumn #'force-hshift = #1.7%} <<{ \stemUp 
        \once \override NoteColumn #'force-hshift = #1.7
     d4. c}\\{\stemDown c4 b8 c4.}>>    
}

pianoLH = \relative c{
    \key c\major
    \clef bass
    <<{\stemDown e4. c4 e8 f4. e e c4 e8 f4. e e2. f4. e d c g c, e a f4 g8 c,4.}\\
        {\stemUp \stemExtend g''4. g a g g g  a g g2. a4. g \tieUp g4~ \noFlag g8 g4. g4~ \noFlag g8 g4. g a \override Stem#'length = # 8 a4 g8 <e g>4.}>>
   
}




\book{
    \score{<<
        \new Staff{   \melody}
        \lyricsto "singer"\new Lyrics \text
        \new PianoStaff<<
           %{ \set PianoStaff.instrumentName = \markup {
                \bold
                \bigger} %}
            \new Staff\pianoRH
            \new Staff\pianoLH
            >>
        >>
        \layout {}
        
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 200 8)
      }
    }


    }
 \markup {
    \small \override #'(baseline-skip . 2.5) {
        \hspace #35.0
        \column {\bold 1. " " " " " " " " " "  \bold 2. " " " " " " " " " " \bold 3.}
        \hspace #1.5
        \column {
           \line { Oats and beans and barley grows,}
           \line {As you and I and every one knows,}
           \line { Oats and beans and barley grows,}
           \line {As you and I and every one knows,}
           \line {\hspace #3.0 Waiting for the partner.}
          \line {" "}
          \line { First the farmer sows his seed,}
          \line { Then he stands and takes his ease,}
          \line { Stamps his feet and claps his hands,}
          \line { And turns him round to view his lands,}
          \line {\hspace #3.0 Waiting for the partner.}
          \line {" "}
          \line { Now you’re married you must obey,}
          \line { Must be true in all you say,}
          \line { Must be kind and must be good,}
          \line { And help your wife to chop the wood,}
          \line {\hspace #3.0 Waiting for the partner.}
        }
    }
    }
}

