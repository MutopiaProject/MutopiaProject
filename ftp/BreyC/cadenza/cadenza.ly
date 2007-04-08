\header {
        title = "Cadenza"
        subtitle = "Haydn Cello Concerto in D major, Opus 101, 1st movement"
        composer = "Carter Brey"
       
         mutopiatitle = "Cadenza for Haydn Cello Concerto in D major, 1st movement"
         mutopiacomposer = "Carter Brey (b. 1954)"
         mutopiainstrument = "Cello"
         style = "Classical"
         copyright = "Public Domain"
        maintainer = "Carter Brey"
         maintainerEmail = "cbrey@attglobal.net"
         maintainerWeb = "http://www.nyplive.org/music/orchestra/index.cfm?page=profile&personNum=7"
         lastupdated = "2002/April/08"

         tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
         footer = "Mutopia-2002/04/08-231"
    }

\score  {

    \notes {
        \time 4/4
        \clef bass
        \key d \major
       
        % 1
       
        r4 a,16^\fermata\ff d32( ) fis a d fis a d' fis a d' fis' a d' fis'
        \clef treble a'
        d' fis' a' d'' fis' a' d''
       
        %2   
       
             <d'4 fis''> <d'16( fis''> <)e' g''> <e'( g''> <)fis' a''>
        <fis'8. a''> <d''16 fis''> <fis''4 a''> \clef bass
       
        %3
       
         <a8.\mp( fis> <)fis16 d> <a8( c> <)g bes,>
       
        \context Staff
       
        < \context Voice = VA { \stemUp f8. d16 f d f d [fis8. g16] [a8 ais]}
          \context Voice = VB { \stemDown r16 a, bes, b, c16 r cis r r\p d cis b, fis d fis d} >
       
         [<g,16( d b> <)b d'> <b d'> g,(] b, )d <a( cis'> <)g b>
         <g( b> <fis a> g <)b, fis>
       
        < \context Voice = VA { \stemUp e8  a g4 fis }
          \context Voice = VB { \stemDown g,8 a, b, cis dis4 } >
         
         %6
         
         <e,32( b, g--> fis g fis g fis e )d <a,( cis--> d cis
        d cis e fis )g <fis,( d a--> gis a gis a g fis )e <b,\>(
        dis--> e fis g a_"esitando" b cis' )\!dis' \clef treble
       
        %7
       
        e'-1^"accel"\<( fis' e' fis' g' a' g' )a' b'-1( cis'' dis'' e''-1 fis'' g''-1 a'' )ais''-3
            \!b''-3--( gis'' f'' gis'' f'' d'' b' )gis' f'( d' b gis \clef bass f d b, )gis,
           
            %8
           
        <a,( \ff d--> fis e g fis a g b \clef tenor a d' cis' e' d' fis' e' )g'
        fis'( a' g' b' a' d'' cis'' e'' \clef treble d'' fis'' e'' g'' fis'' a'' g'' )b''
       
        %9

                a''8. fis''16 a''8 \times 2/3 {d''16( e'' )fis''}
        < \context Voice = VA { \stemUp e''4.\trill d''8 \grace d'8 d''4}
        \context Voice = VB { \stemDown g'4 a' d'} >
        r4 r2 \bar "|."
        }   
       
        \paper {}
        \midi { \tempo 4 = 58 }
            
    }   
