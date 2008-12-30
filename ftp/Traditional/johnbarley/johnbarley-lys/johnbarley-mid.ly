
#(ly:set-option 'point-and-click #f)
\version  "2.8.3"
\header {
    title = "John Barleycorn (midi version, NOT for printing)"
    composer = "trad. (coll. G. B. Gardiner), arr. Gustav von Holst"
    instrument = "Voice, Piano"

   
 mutopiatitle = "John Barleycorn"
 mutopiacomposer = "trad. arr. Gustav von Holst"
 mutopiainstrument = "Voice and Piano"
 date = "1909"
 source = "Folk-Songs from Hampshire"
 style = "Folk"
 copyright = "Public Domain"
 maintainer = "Nigel Holmes"
 maintainerEmail = "nigel.holmes@thesaurus.badw.de"
 lastupdated = "???, 2006"


 footer = "Mutopia-2006/09/11-814"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 17)
\paper  {
    #(set-default-paper-size "a4")
    ragged-bottom = ##f
    }

melody = \relative c' \context Voice = "singer"
{
    \set Staff.midiInstrument = "flute"
     \key c\major
     \time 2/4
     \clef treble 
    
    r2^\markup {\italic {Moderato maestoso.}}
    r2 r r4 r8 
    e8 
    \repeat volta 4 { \bar "|:"
        a a d d c b a 
        a16 (b) c8 c d d a4.
        a8 d d c b16(a) g8 g a
        a a a g a d,(e)
        f g a16. b32 a16 g f8 e16 e d4. 
        e8 \key g\major a a d d c16 c b8 a a16(b) c8 c d16 d d8 a4.
        a8 d d c b16(a) g8 g a a a a g a d,(e)
        f g a16. b32 a16 g f8 e16 e d4. e8 \key c\major \bar ":|"
    }
    r2 r
    
        \bar  "||"     
}

text = \lyricmode {
    There were three kings came from the North,
    Came from the North so high;
    They all did make a so -- lemn vow,
    John Bar -- ley -- corn should die,-
    With my fol le did -- dle rite fol le day. 
    
    They ploughed him in, they har -- rowed him in 
    With clods all a -- ver his head;
    And these three kings they swore and vowed
    John Bar -- ley -- corn was dead,
    With my fol le did -- dle rite fol le day.
}

upper = \relative c'{
    \key c\major
    
    \override DynamicText #'extra-offset = #'(0.0 . -2.5)
    r2_\f   <f a>16. <g b>32 <f a>16 <e g> <d f>8 <c e> <b d>2_\markup {\italic dim.} ~<b d>4 <c e> 
    r8_\mf <a f'> r <f d'> 
    \clef bass    r <e c'> r <c a'> r <f a c> r <d g b> r <c e a>4.
    r8 <d f a> r <d f b> r <e g c> r <c f a> r <c f a> r  <b f' a> r <c e a> 
    % With my
    r <d f g> <d f a> r r <c e a> <f a>16. [b32 a16 \change Staff = bassclef g]  \change Staff = trebleclef r8  
    \clef treble e''_\p \key g\major a_\markup {\italic staccato} <d, fis a> <fis a d> <fis a d> |
        <e g c> <c g' b> <d fis a> 
    %With clods all
    a'16 b <d, g c>8 <d g c> <g b d> <g b d> <d fis a>4.
    <d fis a>8 <d g d'> <d g d'> <e g c> <d b'>16 <c a'> <c e g>8 <c e g> <c d a'> <c d a'> <c e a> <c e a> <b d g> <b d a'> <g c d> 
    %With my fol
    <g c e> <c d f> <c e g> <f a>16. <g b>32 <f a>16 <e g> <d f>8 <g, c e> <f a d>4 r 
    \key c\major
    r2 r2
}


lower = \relative c{
    \key c\major
    \clef bass
    a16.\f b32 a16 g f8 e d e f g a8. b16 a8 g f r e 
    %There were
    r d_\mf e_\f f g_\ff a16._\ff b32 a16 g_\f f8 e_\mf d r g r a e a,4 d8 r g r e r f r e r d r c r
    %With my
    b r d r r a d s8 f'8 e_\p
    \key g\major
    d a' d, a' d, a' d, a' d, g d g c, a' c, 
    %And these three kings
    a' b, g' b, g' a, g' a, fis' g, g' f,  f' e, c' 
    %WIth my
    g e d e f a d16. b32 a16 g f8 e 
    \key c\major 
   d r a r d,2 \fermata   
}



\book{
\score{<<
    \new Staff<< \melody  >>
    \lyricsto "singer"\new Lyrics \text
    \context PianoStaff<<
        \context Staff = "trebleclef" << \upper>>
        \context Staff = "bassclef"  <<\lower>>
        >>
    >>
    \layout{}
    \midi {    
        \tempo 8 = 90}
    }
\markup { \column{
    \line {\bold 1. There were three kings came from the North,}
    \line {\hspace #3.0 Came from the North so high,}
    \line {They all did make a solemn vow,}
    \line {\hspace #3.0 John Barleycorn should die,}
    \line {\italic CHORUS. - With my fol le diddle rite fol le day.}
    \line {" "}
    \line {\bold 2. They ploughed him in, they harrowed him in,}
    \line {\hspace #3.0 With clods all over his head,}
    \line {And these three kings they swore and vowed,}
    \line {\hspace #3.0 John Barleycorn was dead,}
    \line {\italic CHORUS. - With my &c.}
    \line {" "}
    \line {\bold 3. There he lay sleeping in the ground,}
    \line {\hspace #3.0 Till rain from heaven did fall;}
    \line {Then Barleycorn sprung up his head,}
    \line {\hspace #3.0 And so amazed them all,}
    \line {\italic CHORUS. - With my &c.}
    \line {" "}
    \line {\bold 4. There he remained till midsummer,}
    \line {\hspace #3.0 And looked both pale and wan,}
    \line {Then Barleycorn he got a beard,}
    \line {\hspace #3.0 And he became a man,}
    \line {\italic CHORUS. - With my &c.} 
    \line {" "}
    \line {\bold 5. Then they sent men with scythes so sharp}
    \line {\hspace #3.0 To cut him off at knee;}
    \line {And then poor little Barleycorn,}
    \line {\hspace #3.0 They served him barbarously,}
    \line {\italic CHORUS. - With my &c.} 
    \line {" "}
    \line {\bold 6. Then they sent men with pitchforks strong}
    \line {\hspace #3.0 To pierce him through the heart;}
    \line {And like a dreadful tragedy,}
    \line {\hspace #3.0 They bound him to a cart,}
    \line {\italic CHORUS. - With my &c.} 
    \line {" "}
    \line {\bold 7. They hir-ed men with crab-tree sticks,}
    \line {\hspace #3.0 And whipped him skin from bone;}
    \line {The miller served him worse than that,}
    \line {\hspace #3.0 And ground him ’twixt two stones,}
    \line {\italic CHORUS. - With my &c.} 
    \line {" "}
    \line {\bold 8. O! Barlecorn’s the choicest grain}
    \line {\hspace #3.0 That ever was sown on land;}
    \line {It will do more than any grain,}
    \line {\hspace #3.0 By the turning of your hand}
    \line {\italic CHORUS. - With my &c.} 

    }
}
}



