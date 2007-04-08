\header{
    title = "Belle qui tiens ma vie"
    composer = "Thoinot Arbeau"
    date = "1588"
    opus = "Orch\\'esographie"

    mutopiatitle = "Pavan: Belle qui tiens ma Vie"
    mutopiacomposer = "T. Arbeau (1519--1595)"
    mutopiainstrument="Voice (SATB)"
    style = "Renaissance"
    copyright="Public Domain"
    source = "http://memory.loc.gov/cgi-bin/ampage?collId=musdi&fileName=219/musdi219.db&recNum=61"
    maintainer="Peter Chubb"
    maintainerEmail="peter@chubb.wattle.id.au"
    lastupdated="2002/Feb/21"
    footer = "Mutopia-2002/05/05-1"
    tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small This" +
        " music is part of the Mutopia project, " +
        "\\texttt{http://www.mutopiaproject.org/}." +
        " It has been typeset and placed in the public domain " +
        "by " + \maintainer +
        ". Unrestricted modification and redistribution is " +
        "permitted and encouraged---copy this music and share it!}"
}

%{
	$Log: arbeau.ly,v $
	Revision 1.5  2002/05/05 10:12:08  peterc
	Removed typos.
	
	Revision 1.4  2002/02/21 03:09:39  peterc
	Modified headers to new Mutopia guidelines; updated to Lilypond
	1.4.10.
	
%}

\version "1.4.0"

global=\notes{\key f \major % not really
    \time 2/4 % bars are to match against dance steps.
}

%
% Drum rhythm
%
tambour = \notes {
    \property Thread.NoteHead \override #'style = #'cross
    \stemUp

    \repeat unfold 32 {
           f4 f8 f8 
    }
}

Superius = \notes \relative c'' {
    \repeat unfold 2 {
    g2 g4 fis |
    g a bes2 |
    bes4 d c bes |
    bes a bes2 |
    }
    \repeat unfold 2 {
        bes2  a4 a |
        g g fis2 |
        d2 e8( )f g4 |
        g fis g2
    }
}

ContratenorShift = \notes\relative c' {
    \repeat unfold 2 {
        s2 s4 s |
        s s s2 |
        s4 s s s |
        s s s2
    }
    s2 s4 s |
    s s s2 |    

    \property Voice.NoteColumn \override #'force-hshift = #1.0 
    s2
    \property Voice.NoteColumn \override #'force-hshift = #0.0 
    s4 s |
    s s s2 |
    s2 s4 s|
    s s s2 |
    \property Voice.NoteColumn \override #'force-hshift = #1.0 
    s2 
    \property Voice.NoteColumn \override #'force-hshift = #0.0 
    s4 s |
    s s s2
}

Contratenor = \notes\relative c' {
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

Tenor=\notes\relative c' {
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

Bassus = \notes\relative c' {
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

verseOne=\lyrics{
    Bel -- le qui |
    tiens ma vi -- |
    e cap -- tiv -- e |
    dans tes yeux |
    Qui mas l'am -- |
    e ra -- vi -- | 
    e D'un sou -- ris gra -- ci -- eux, |
    \repeat unfold 2 {
        Viens t\^ot me |
        se -- cou -- rir 
        ou me fau -- |
        dra mou -- rir
    }
}

verseTwo=\lyrics{
    Pour -- quoi fuis |
    tu, mign -- ard -- |
    e,
    Si je suis |
     pr\'es de toi |
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

verseThree=\lyrics{
    Tes beau -- t\'es et ta gra -- ce
    Et tes di -- vins pro -- pos
    Ont \'e --  chauff -- \'e la gla -- ce
    Qui me ge -- lait les os,
    \repeat unfold 2 { 
        Et ont    rem -- pli mon coeur
        D'une am -- our -- reuse ar -- deur.
    }
}


verseFour=\lyrics{
    Mon \^a -- me vou -- lait \^e -- tre
    Lib -- re de pass -- i -- on,
    Mais l'am -- our s'est fait ma\^\i -- tre
    De mes af -- fect -- i -- ons
    \repeat unfold 2 {
        Et a mis sous sa loi
        Et mon coeur et ma foi.
    }
}

verseFive=\lyrics{
    Ap -- proch -- e donc ma bel -- le
    Ap -- proch -- e toi mon bien,
    Ne me sois plus re -- bel -- le
    Puis -- que mon coeur est tien,
    \repeat unfold 2 {
        Pour mon mal ap -- prais -- er
        Don -- ne moi un bai -- ser
    }
    
}

verseSix=\lyrics{
    Je meurs, mon An -- ge -- let -- te,
    Je meurs en te bai -- sant
    Ta bou -- che tant dou -- cet -- te
    Va mon bien rav -- is -- sant
    \repeat unfold 2 {
        A ce coup mes es -- prits
        Sont tous d'a -- mour \'e -- pris.
    }
}

verseSeven=\lyrics{
    Plu -- t\^ot on ver -- ra l'ond -- e
    Con -- tre -- mont re -- cu -- ler
    Et plu -- t\^ot l'oeil du mon -- de
    Ces -- se -- ra  de br\^u -- ler
    \repeat unfold 2 {
        Que l'a -- mour qui m'\'e -- point
        D\'e -- crois -- se d'un seul point.
    }
}

words = <
    \context LyricsVoice = "v1" \lyrics\verseOne
    \context LyricsVoice = "v2" \lyrics\verseTwo
    \context LyricsVoice = "v3" \lyrics\verseThree
    \context LyricsVoice = "v4" \lyrics\verseFour
    \context LyricsVoice = "v5" \lyrics\verseFive
    \context LyricsVoice = "v6" \lyrics\verseSix
    \context LyricsVoice = "v7" \lyrics\verseSeven
>

choirscore = \context ChoirStaff <

        \context RhythmicStaff = tambour \notes { 
	    \property RhythmicStaff.midiInstrument = "melodic tom"
            \property RhythmicStaff.instrument = "Tambour"
            \tambour
        }
	    \property ChoirStaff.midiInstrument = "recorder"
            \addlyrics
                \context Staff=T {
                    \global \clef treble
                    \property Staff.automaticMelismata = ##t
                    <
                        \context Voice = Superius {\notes \voiceOne\Superius}
                        \context Voice = Contratenor <
                             \context Thread = CT {\notes\voiceTwo \Contratenor}
			     \context Thread = CT {\notes\ContratenorShift}
			>
                    >
                    \bar "|."
                }
                \words

            \context Staff=B {
                \global \clef bass
                <
                    \context Voice = Tenor \notes{\voiceOne\Tenor}
                    \context Voice = Bassus \notes{\voiceTwo\Bassus}
                >
                \bar "|."
            }
>


recorderscore=  % for recorder + drum
    \context StaffGroup <
        \context RhythmicStaff = tambour \notes { 
	    \property RhythmicStaff.midiInstrument = "melodic tom"
            \property RhythmicStaff.instrument = "Tambour"
            \tambour
        }
	\context Staff ="D" \notes{ 
	    \property Staff.instrument = "Descant" 
	    \property Staff.midiInstrument = "recorder"
	    \global\clef "G^8"
	    \transpose c'' \Superius  \bar "|."

	}
	\context Staff ="Tr" \notes{ 
	    \property Staff.instrument = "Treble" 
	    \property Staff.midiInstrument = "recorder"
	    \global\clef "G"\transpose c'' \Contratenor   \bar "|."
	}
	\context Staff ="T" \notes{ 
	    \property Staff.instrument = "Tenor" 
	    \property Staff.midiInstrument = "recorder"
	    \global\clef "G"\transpose c'' \Tenor   \bar "|."
	}
	\context Staff ="B" \notes { 
	    \property Staff.instrument = "Bass" 
	    \property Staff.midiInstrument = "recorder"
	    \global\clef "F"\transpose c' \Bassus   \bar "|."
	    }
    >



\score { \choirscore 
    \paper {
       \translator{ \RhythmicStaffContext
            \remove "Time_signature_engraver"
            \remove "Staff_symbol_engraver"
            \remove "Clef_engraver"
            \consists "Instrument_name_engraver"
        }
        \translator{ \StaffContext
            \remove "Time_signature_engraver"
        }
    }
    \midi{
	\tempo 2=80
    }
}

