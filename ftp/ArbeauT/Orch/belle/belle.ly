\header{
    title = "Belle qui tiens ma vie"
    composer = "Thoinot Arbeau"
    date = "1588"
    opus = "Orchésographie"

    mutopiatitle = "Pavan: Belle qui tiens ma Vie"
    mutopiacomposer = "ArbeauT"
    mutopiainstrument="Voice (SATB)"
    style = "Renaissance"
    copyright="Public Domain"
    source = "http://memory.loc.gov/cgi-bin/ampage?collId=musdi&fileName=219/musdi219.db&recNum=61"
    maintainer="Peter Chubb"
    maintainerEmail="mutopia@chubb.wattle.id.au"
    lastupdated="2009/Mar/28"
 footer = "Mutopia-2009/08/05-1"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%{
	$Log: arbeau.ly,v $
	Revision 1.9  2009-08-05 04:28:54  peterc
	Thanks to Neil Puttock for the correct (weird) syntax for the system
	start delimiters.

	Revision 1.8  2009-06-28 23:12:24  peterc
	Started an update to 2.12.0 --- the syntax for overrides, etc., has
	changed a lot since 1.14; this version is almost good enough: the
	fount for the instrument name looks bad, and the head barline for the
	staff group extends too far.

	Revision 1.7  2003-05-09 22:51:26  peterc
	More typos spotted by Steve Doerr.

	Revision 1.6  2003/05/09 08:20:44  peterc
	Updated to latest Lilypond; fixed typo in verse four.
	
	Revision 1.5  2002/05/05 10:12:08  peterc
	Removed typos.
	
	Revision 1.4  2002/02/21 03:09:39  peterc
	Modified headers to new Mutopia guidelines; updated to Lilypond
	1.4.10.
	
%}

\version "2.12.0"

global={\key f \major % not really
    \time 2/4 % bars are to match against dance steps.
}

%
% Drum rhythm
%
tambour =  {
    \override NoteHead   #'style = #'cross
    \stemUp
    \repeat unfold 32 {
           f4 f8 f8 
    }
}

Superius =  \relative c'' {
    \repeat unfold 2 {
    g2 g4 fis |
    g a bes2 |
    bes4 d c bes |
    bes a bes2 |
    }
    \repeat unfold 2 {
        bes2  a4 a |
        g g fis2 |
        d2 e8(  f) g4 |
        g fis g2
    }
}

ContratenorShift = \relative c' {
    \repeat unfold 2 {
        s2 s4 s |
        s s s2 |
        s4 s s s |
        s s s2
    }
    s2 s4 s |
    s s s2 |    

    \override NoteColumn   #'force-hshift = #1.15
    s2
    \override NoteColumn   #'force-hshift = #0.0 
    s4 s |
    s s s2 |
    s2 s4 s|
    s s s2 |
    \override NoteColumn   #'force-hshift = #1.15
    s2 
    \override NoteColumn   #'force-hshift = #0.0 
    s4 s |
    s s s2
}

Contratenor = \relative c' {
    \repeat unfold 2 {
        d2 d4 d |
        d f f2 |
        f4 f e f |
        g f f2
    }
    f2 f4 f |
    d es d2 |
    f c4 d |
    d d b2
    bes?2 f'4 f|
    d es d2 |
    f2 
    e4 d |
    d d d2
}

Tenor=\relative c' {
    \repeat unfold 2 {
        bes2 bes4 a |
        bes c d2 |
        d4 bes g d' |
        c c d2 |
    }
    \repeat unfold 2 {
        d2 c4 d |
        bes c a2 |
        bes2 g4 bes |
        a a g2
    }
}

Bassus = \relative c' {
    \repeat unfold 2 {
        g2 g4 d |
        g f bes,2 |
        bes4 bes c d |
        es f bes,2 |
    }
    \repeat unfold 2 {
        bes'2 f4 d |
        g c, d2 |
        bes c4 g |
        d' d g,2
    }
}

verseOne=\lyricmode{
  \set stanza = #"1. "
    Bel -- le qui |
    tiens ma vi -- |
    e cap -- tiv -- e |
    dans tes yeux |
    Qui m'as l'am -- |
    e ra -- vi -- | 
    e D'un sou -- ris gra -- ci -- eux, |
    \repeat unfold 2 {
        Viens tôt me |
        se -- cou -- rir 
        ou me fau -- |
        dra mou -- rir
    }
}

verseTwo=\lyricmode{
  \set  stanza = #"2. "
    Pour -- quoi fuis |
    tu, mign -- ard -- |
    e,
    Si je suis |
     prés de toi |
    Quand tes yeux |
    je re -- gard -- |
    e 
    Je me perds |
    de -- dans moi,
    \repeat unfold 2 { 
        Car tes per -- | fect -- i -- ons
        Chang -- ent mes | act -- i -- ons. 
    }
}

verseThree=\lyricmode{
  \set stanza = #"3. "
    Tes beau -- tés et ta grâ -- ce
    Et tes di -- vins pro -- pos
    Ont é --  chauff -- é la gla -- ce
    Qui me ge -- lait les os,
    \repeat unfold 2 { 
        Et ont    rem -- pli mon coeur
        D'une am -- our -- reuse ar -- deur.
    }
}


verseFour=\lyricmode{
  \set stanza = #"4. "
    Mon â -- me sou -- lait ê -- tre
    Lib -- re de pass -- i -- on,
    Mais l'am -- our s'est fait maî -- tre
    De mes af -- fect -- i -- ons
    \repeat unfold 2 {
        Et a mis sous sa loi
        Et mon coeur et ma foi.
    }
}

verseFive=\lyricmode{
  \set stanza = #"5. "
    Ap -- proch -- e donc ma bel -- le
    Ap -- proch -- e toi mon bien,
    Ne me sois plus re -- bel -- le
    Puis -- que mon coeur est tien,
    \repeat unfold 2 {
        Pour mon mal a -- pais -- er
        Don -- ne moi un bai -- ser
    }
    
}

verseSix=\lyricmode{
  \set stanza = #"6. "

    Je meurs, mon An -- ge -- let -- te,
    Je meurs en te bai -- sant
    Ta bou -- che tant dou -- cet -- te
    Va mon bien rav -- is -- sant
    \repeat unfold 2 {
        A ce coup mes es -- prits
        Sont tous d'a -- mour é -- pris.
    }
}

verseSeven=\lyricmode{
  \set stanza = #"7. "
    Plu -- tôt on ver -- ra l'ond -- e
    Con -- tre -- mont re -- cu -- ler
    Et plu -- tôt l'oeil du mon -- de
    Ces -- se -- ra  de brû -- ler
    \repeat unfold 2 {
        Que l'a -- mour qui m'é -- point
        Dé -- crois -- se d'un seul point.
    }
}

words = \context Lyrics <<
    \context Lyrics = "v1" \verseOne
    \context Lyrics = "v2" \verseTwo
    \context Lyrics = "v3" \verseThree
    \context Lyrics = "v4" \verseFour
    \context Lyrics = "v5" \verseFive
    \context Lyrics = "v6" \verseSix
    \context Lyrics = "v7" \verseSeven
>>

choirscore = {
  \context StaffGroup \with { \remove "System_start_delimiter_engraver"
			    \remove "Span_bar_engraver" } 
  <<
    \context RhythmicStaff = "tambour"  { 
      \set RhythmicStaff.midiInstrument = "melodic tom"
      \set RhythmicStaff.instrumentName = "Tambour"
      \tambour
    }
    \context ChoirStaff \with {
    systemStartDelimiterHierarchy =
      #'(SystemStartBar (SystemStartBracket a b))
    }
    <<
      \set ChoirStaff.midiInstrument = "recorder"
      \context Staff=T {
	\global \clef treble
	\unset Staff.melismaBusyProperties 
	<<
	  \context Voice = Superius { \voiceOne\Superius}
	  \context Voice = Contratenor <<
	    \context Voice = CT {\voiceTwo \Contratenor}
	    \context Voice = CT {\ContratenorShift}
	  >>
	>>
	\bar "|."
      }
      \lyricsto Superius \words
      \context Staff=B {
	\global \clef bass
	<<
	  \context Voice = Tenor {\voiceOne\Tenor}
	  \context Voice = Bassus {\voiceTwo\Bassus}
	>>
	\bar "|."
      }
    >>
  >>
}


recorderscore=  % for recorder + drum
<<
  \context RhythmicStaff = "tambour"  { 
    \set RhythmicStaff.midiInstrument = "melodic tom"
    \set RhythmicStaff.instrumentName = "Tambour"
    \tambour
  }
  \context StaffGroup \with {
    systemStartDelimiterHierarchy =
      #'(SystemStartBar (SystemStartBracket a b c d))
    } <<
    \context Staff ="D" { 
      \set Staff.instrumentName = "Descant" 
      \set Staff.midiInstrument = "recorder"
      \global\clef "G^8"
      \transpose c c' \Superius  \bar "|."
    }
    \context Staff ="Tr" { 
      \set Staff.instrumentName = "Treble" 
      \set Staff.midiInstrument = "recorder"
      \global\clef "G"\transpose c c' \Contratenor   \bar "|."
    }
    \context Staff ="T" { 
      \set Staff.instrumentName = "Tenor" 
      \set Staff.midiInstrument = "recorder"
      \global\clef "G"\transpose c c' \Tenor   \bar "|."
    }
    \context Staff ="B"  { 
      \set Staff.instrumentName = "Bass" 
      \set Staff.midiInstrument = "recorder"
      \global\clef "F"\transpose c c \Bassus   \bar "|."
    }
  >>
>>


\score { 
  % Uncomment just one of \choirscore or \recorderscore.
%   \choirscore 
  \recorderscore

  \layout {
    \context{ \RhythmicStaff
	      \override Clef #'stencil = ##f
	      \override TimeSignature #'stencil = ##f
	      \override StaffSymbol #'stencil = ##f
	      \consists "Instrument_name_engraver"
	      \override BarLine #'transparent = ##t
	    }
    \context{ \Staff
	      \override TimeSignature #'stencil = ##f
	    }
    \context { \Score 
	       \remove "System_start_delimiter_engraver"
    }
    indent = 10.0\mm
  }
    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 2)
    }
  }
}
