\version "2.16.0"

\header {
        title = "Cadenza"
        subtitle = "Haydn Cello Concerto in D major, Opus 101, 1st movement"
        composer = "Carter Brey"
       
         mutopiatitle = "Cadenza for Haydn Cello Concerto in D major, 1st movement"
         mutopiacomposer = "BreyC"
         mutopiainstrument = "Cello"
         style = "Classical"
         copyright = "Public Domain"
        maintainer = "Carter Brey"
         maintainerEmail = "cbrey@attglobal.net"
         maintainerWeb = "http://www.nyplive.org/music/orchestra/index.cfm?page=profile&personNum=7"
         lastupdated = "2002/April/08"

         tagline = "\\parbox{\paper-width}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
         footer = "Mutopia-2002/04/08-231"
    }

\score  {

     {
        \time 4/4
        \clef bass
        \key d \major
	\set Timing.baseMoment = #(ly:make-moment 1 4)
	\set Timing.beamExceptions = #'((end . (((1 . 32) . (4 4 4 4 4 4 4 4)))))
	\override TupletBracket #'bracket-visibility = ##f
       
        % 1
       
        r4 a,16^\fermata\ff d32(  fis) a d fis a d' fis a d' fis' a d' fis'
        \clef treble a'
        d' fis' a' d'' fis' a' d''
       
        %2   
       
             <d' fis''>4 <d' fis''>16( <e' g''>) <e' g''>( <fis' a''>)
        <fis' a''>8. <d'' fis''>16 <fis'' a''>4 \clef bass
       
        %3
       
         <a fis>8.(\mp <fis d>16) <a c>8( <g bes,>)
       
       
        << { f8. d16 f d f d  fis8.[ g16]  a8[ ais]} \\
           { r16 a, bes, b, c16 r cis r r\p d cis b, fis d fis d} >>
       
         <g, d b>16[( <b d'>) <b d'> g,(] b,  d) <a cis'>( <g b>)
         <g b>( <fis a> g <b, fis>)
       
        << {e8  a g4 fis } \\ {g,8 a, b, cis dis4 } >>
         
         %6
         
         <e, b, g>32--( fis g fis g fis e  d) <a, cis>--( d cis
        d cis e fis  g) <fis, d a>--( gis a gis a g fis  e)
        <b, dis>--(\> e fis g a_"esitando" b cis' ) dis'\! \clef treble
       
        %7
       
        e'-1^"accel"\<( fis' e' fis' g' a' g'  a') b'-1( cis'' dis'' e''-1 fis'' g''-1 a''  ais'')-3
             b''\!-3-( gis'' f'' gis'' f'' d'' b'  gis') f'( d' b gis \clef bass f d b,  gis,)
           
            %8
           
        <a, d>--(\ff fis e g fis a g b \clef tenor a d' cis' e' d' fis' e'  g')
        fis'( a' g' b' a' d'' cis'' e'' \clef treble d'' fis'' e'' g'' fis'' a'' g''  b'')
       
        %9

                a''8. fis''16 a''8 \times 2/3 {d''16( e''  fis'')}
        << { e''4.\trill d''8 \slashedGrace d'8 d''4} \\ { g'4 a' d'} >>
        r4 r2 \bar "|."
        }   
       
        \layout {}
        
  \midi {
    \tempo 4 = 58
    }


            
    }   
