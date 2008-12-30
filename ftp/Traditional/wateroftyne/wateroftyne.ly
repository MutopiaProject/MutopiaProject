#(ly:set-option 'point-and-click #f)
\version "2.10.0"
\header {
    title = "The Water of Tyne"
    composer = "trad., arr. J.A. Fuller Maitland"

    mutopiatitle = "The Water of Tyne"
    mutopiacomposer = "Traditional"
    mutopiaarranger = "J. A. Fuller-Maitland (1856-1936)"
    mutopiainstrument = "Voice and Piano"
    date = "1893"
    source = "English County Songs"
    editor = "L. Broadwood & J. Maitland"
    maintainer="Nigel Holmes"
    maintainerEmail = "nigel.holmes@thesaurus.badw.de"
    lastupdated = "December 16, 2006"
    style = "Folk"
    copyright = "Public Domain"

 footer = "Mutopia-2006/12/21-889"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


#(set-global-staff-size 17)
\paper{
    %#(set-default-paper-size "a4")
    raggedbottom = ##t
}

melody = \relative c'' \context Voice = "singer"
{
    \set Staff.midiInstrument = "flute"
     \key d\major
     \time 6/8
     \clef treble 
    \partial 8
    r8
    r2. r4 r8 r4 a8
    a fis fis a fis e d d8. d16 d4 
    e16(fis) g8 g fis e fis a b b8. b16 a4
    fis16(e) d8 d' d d e fis d a8. b16 b4
    cis16 (d) a8 fis a a8. fis16 e8 d d8. d16 d4
   \bar  "|."
}

text = \lyricmode {
    \set stanza = "1."
    I  can -- not get to my love if I would dee, 
    The wa -- ter of Tyne runs be -- tween him and me;
    And here I must stand with the tear in my e’e, 
    Both sigh -- ing and sick -- ly my sweet -- heart to see. 
}


pianoRH = \relative c''{
    \key d\major
    a8^\markup { \italic Moderato.}
    <<{\stemDown d,4. cis}\\{\stemUp a'8 fis fis a fis e}>>
    d4 d8 d4. 
    r8 a <d a'> r a <e' a>
    r a, <b g'> <a fis'>4 r8
    b cis d e fis <e a>
    <d b'>4 <d b'>8 <cis a'>4 r8
    a'4 b8 fis e d~d <<{a' b} \\ {\stemDown d,4} >>  \stemUp  <d b'>4.
    r8 <<{d8 a'} \\ {\stemDown a,4 }>> r8 <<{cis8 a'} \\ {\stemDown a,4 }>>
   
    r8 \stemUp <a d>8 <a d> <a d>4
    
}

pianoLH = \relative c{
    \key d\major
    \clef bass
    \partial 8
   \stemDown
    r8
    <d fis a>4. <a g' a>
    <<{\stemDown d2.} \\ {\stemUp <fis a>8 <g b> <e g> <fis a>4.}>>
    \stemUp <d, a'>8 fis' r   <d, a'>8 fis' g
    <d, a'> fis' d <d, a' d>4 r8
    \stemDown <e' g>4 <d a'>8 <<{\stemDown cis8 d cis}\\{\stemUp a'4 a8}>>
    <<{\stemDown b,8 e e, a4.}\\{\stemUp fis'8 gis4 a4 g8}>>
    \stemDown <d fis>4 \stemUp <g, g'>8 \stemDown <d' a'>4.
    fis4 g8  \stemUp <g, g'>4.
    <<{\stemDown a4. a \tieDown d4.~d4} \\ {\stemUp r8 fis4 r8 fis8 g r8 fis g fis4}>>
   
}

\book{
\score{<<
    \new Staff<< \melody  >>
    \lyricsto "singer"\new Lyrics \text
    \new PianoStaff<<
        \new Staff\pianoRH
        \new Staff\pianoLH
        >>
    >>
    \layout {}
    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 84 8)
      }
    }


    }
    \markup{ \small \override #'(baseline-skip . 2.1) {\hspace #22.0 {
            \column{
            \bold 1.
            " "
            " "
            " "
            " "
            \bold 2.
            " "
            " "
            " "
            " "
            \bold 3.
            }
            \hspace #2.0 \column {
            \line {I cannot get to my love if I would dee,}
            \line {"   The water of Tyne runs between him and me;"}
            \line {And here I must stand with the tear in my e’e,}
            \line {"   Both sighing and sickly my sweetheart to see."}
            \line {" "}
            \line {O where is the boatman? my bonny hinny!}
            \line {"   O where is the boatman? bring him to me,-"}
            \line {To ferry me over the Tyne to my honey,}
            \line {"   And I will remember the boatman and thee."}
            \line {" "}
            \line {O bring me a boatman, I’ll give any money,}
            \line {"   And you for your trouble rewarded shall be,"}
            \line {To ferry me over the Tyne to my honey,}
            \line {"   Or scull him across that rough river to me."} 
            }
            }
        }       
    }
}

