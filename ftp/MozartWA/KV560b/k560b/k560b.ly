\version "2.11.62"

%#(set-global-staff-size 15)

\header {
    title = "O du eselhafter Martin (Jakob)"
    subtitle = "Vierstimmiger Kanon (canon for four voices)"
    composer = "W. A. Mozart (1756-1791)"
        
    mutopiatitle = "O du eselhafter Martin (Jakob)"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV 560b"
    mutopiainstrument = "Voice"
    date = "1785"
    source = "Autograph"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    lastupdated = "2008/Oct/24"
 footer = "Mutopia-2008/10/28-240"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

melody =  \relative c'' {
    \key g \major
    \clef soprano

    \mark "1" d4. d8 d d d d
    | b4 g r2
    | d'4 d8 d d4 d8 d8
    | b4 g r8 g g g
    | e'2 r8 g, g g
    | d'2 r8 b b b
    | a4 e' d fis,
    | g8 g g g g g g g
    | \mark "2" fis4 d r2
    | r8 g g g g g g g
    | fis4 d r2
    | r8 g g g b2
    | r8 g g g c2
    | r8 g g g16 g b8 d, d d
    | c4 c8 c d2
    | g2 r8 g a b
    | \mark "3" c4 c8 a fis a d, fis
    | g2 r8 g a b
    | c4. a8  fis[ a]  d,[(  fis)]
    | g4 g g'2 ~
    | g4 g, g'2 ~
    | g4 b, d8 b g fis
    | e4 \melisma c'  b \melismaEnd a
    | g2 r2
    | \mark "4" a4 a8 a c4 r8 a
    | g8. a16 b4 r r8 g
    | a4 r8 a a4 r8 a  % The autograph is not clear about the third a
    | g8. a16 b4 d g,
    | r2 e'4 g,
    | r2 d'4 g,
    | r4 a b c
    | b2 r2^\fermata \bar "|."
}

primText = \lyricmode {

    O du ei -- sel -- saf -- ter Mar -- tin!  O du Mar -- ti -- ni --
    scher E -- sel!  Du bist so faul als wie ein Gaul, der we -- der
    Kopf noch Kra -- gen hat.  Mit dir ist gar nichts an -- zu -- fan
    -- gen: ich seh dich noch am Gal -- gen han -- gen.  Du dum -- mer
    Paul, halt du nur's Maul.  Ich scheiß dir auf's Maul, so hoff'
    ich wirst doch er -- wa -- chen.  O lie -- ber Lip -- erl, ich bit
    -- te dich recht schön, o leck mich doch ge -- schwind in Arsch!

    O leck, o leck, o leck mich doch ge -- schwind im Arsch.  O lie --
    ber Freund, ver -- zei -- he mir, den Arsch, den Arsch, pet
    -- schier ich dir.  Li -- perl!  Mar -- tin!  Li -- Perl!  ver --
    zei -- he mir!

}

newText = \lyricmode {

    O du ja -- ko -- bi -- scher E -- sel!  O du Mar -- ti -- ni --
    scher E -- sel!  Du bist so faul als wie ein Gaul, der we -- der
    Kopf noch Kra -- gen hat.  Mit dir ist gar nichts an -- zu -- fan
    -- gen: ich seh dich noch am Gal -- gen han -- gen.  Du dum -- mer
    Paul, halt du nur's Maul.  Ich scheiß dir auf's Maul, so hoff'
    ich wirst doch er -- wa -- chen.  O lie -- ber Lip -- erl, ich bit
    -- te dich recht schön, o leck mich doch ge -- schwind in Arsch!
    O leck, o leck, o leck mich doch ge -- schwind im Arsch.  O lie --
    ber Freund, ver -- zei -- he mir, den Arsch, den Arsch, pet
    -- schier ich dir.  Li -- perl!  Ja -- kob!  Li -- Perl!  ver --
    zei -- he mir!

}

\book {
  \score {
    \new Staff {
      \set Staff.instrumentName = "Voice"
      \set Staff.shortInstrumentName = "V."
      \set Staff.midiInstrument = "voice oohs"

      \context Voice = primVoice {
        \autoBeamOff \melody
      }
      \addlyrics { \primText }
    }

    \header {
      opus = "KV 560b"
        piece = "Primitive text (O du eselhafter Martin)"
        note = "This is the original text crossed out by Mozart"
    }

    \midi {
      \context {
        \Score
          tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }

    \layout { }
  }

  \pageBreak

  \score {
    \new Staff {
      \set Staff.instrumentName = "Voice"
      \set Staff.shortInstrumentName = "V."
      \set Staff.midiInstrument = "voice oohs"

      \context Voice = newVoice {
        \autoBeamOff \melody
      }
      \addlyrics { \newText }
    }

    \header {
      opus = "KV 560b"
        piece = "Definitive text (O du jakobischer Esel)"
        note = "This is the final text with Mozart's corrections"
    }

    \midi {
      \context {
        \Score
          tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }

    \layout { }
  }

  \paper {
    ragged-bottom = ##t
  }
}
