% Updated to Lilypond 2.4.2 by Ruud van Silfhout <Ruud.vanSilfhout@mutopiaproject.org>
% Last changed on 31/Jan/2005
\version "2.4.0"

\header {
    title =       "Etude 7"
    opus =        "Op. 60, No. 7"
    composer =    "Matteo Carcassi"
    
    mutopiatitle = "Etude 7"
    mutopiacomposer = "CarcassiM"
    mutopiaopus = "O 60"
    mutopiainstrument = "Guitar"
    date = "19th C."
    source = "Not known"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Jeff Covey"
    maintainerEmail = "jeff.covey@pobox.com"
    maintainerWeb = "http://pobox.com/~jeff.covey/"
    lastupdated = "2005/Jan/31"
    
    footer = "Mutopia-2005/01/31-300"
    tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

global = {
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \transposition c  % guitar music actually sounds an
                      % octave lower than written.
    \set Staff.instrument = "Guitar"
     {
	\clef violin \time 2/4 \key e \major
	\override TextScript   #'padding = #3
	\repeat volta 2 { s2^\markup { "Moderato" } \skip 2*7  }
	\repeat volta 2 { \skip 2*16 }  
    }
}

dim =  {
    #(ly:export (make-event-chord (list (make-span-event 'DecrescendoEvent START)))) 
    \set decrescendoText = \markup { \italic "dim." }
    \set decrescendoSpanner = #'nil
}
enddim =  {
    #(ly:export (make-event-chord (list (make-span-event 'DecrescendoEvent STOP)))) 
    \unset decrescendoText 
    \unset decrescendoSpanner 
}
cresc =  {
    #(ly:export (make-event-chord (list (make-span-event 'CrescendoEvent START)))) 
    \set crescendoText = \markup { \italic "cresc." }
    \set crescendoSpanner = #'nil
}
endcresc =  {
    #(ly:export (make-event-chord (list (make-span-event 'CrescendoEvent STOP)))) 
    \unset crescendoText 
    \unset crescendoSpanner 
}

melody =  \relative c' {
    \stemUp

     e16[ gis cis ( b)]    e,[ gis cis ( b)]
     fis[ a e' dis]        fis,[ a e' dis]
     gis,[ b fis' ( e)]    gis,[ b fis' ( e)]
     a,[ cis gis' ( fis)]  a,[ cis gis' ( fis)]

				% 5

     ais,[ cis gis' ( fis)]  ais,[ cis gis' ( fis)]
     b,[ dis gis ( fis)]     b,[ dis gis ( fis)]
     cis[ e b' ( ais)]       cis,[ e b' ( ais)]
     dis,[ fis cis' ( b)]   b,8 s

				% 9

     dis,16[ fis cis' ( b)]    dis,[ fis cis' ( b)]
     e,[ g d' ( c)]            e,[ g d' ( c)]
     fis,[ a e' dis?]          fis,[ a e' dis]
     g,[ b fis' ( e)]          g,[ b fis' ( e)]
     a,[ c g' ( fis)]          a,[ c g' ( fis)]
     ais,[ cis? gis'? ( fis)]  ais,[ cis gis' ( fis)]
     fis,[ b e ( dis)]         fis,[ ais dis ( cis)]
     b,[ dis cis' ( b)]       b,8 s

				% 17

     e16[ gis cis ( b)]    e,[ gis cis ( b)]
     dis,[ a' cis ( b)]    b,[ a' fis' a,]
     dis,[ a' cis ( b)]    dis,[ a' cis ( b)]
     e,[ gis cis ( b)]     e,,[ b'' gis' b,]
     e,[ gis fis' ( e)]    d,[ gis fis' ( e)]
     cis,[ a' e' a,]       c,[ ais' e' ais,]
     b,[ gis' cis ( b)]    b,[ a' dis ( b)]
     e,[ gis fis' ( e)]   e,,8 s
}

bass =  \relative c' {
    \stemDown
    
    e4_\p e fis fis gis gis \cresc a a
    ais ais b b \endcresc cis_\f cis dis b8 r

				% 9

    dis,4_\p dis e e \cresc fis fis g g
    a a \endcresc ais_\f ais fis fis b, b8 r

				% 17
    
    e4_\fp e dis b \<  dis\! dis e \<  e,\! 
    \cresc e' d cis c \endcresc b_\f b \dim e \enddim e,8 r
    
}


\score {
    \context Staff = "guitar" << 
	\global 
	\context Voice = "melody" { \melody }
	\context Voice = "bass"   { \bass   }
    >>
    \layout { }
    \midi  { \tempo 4=50 }
}

