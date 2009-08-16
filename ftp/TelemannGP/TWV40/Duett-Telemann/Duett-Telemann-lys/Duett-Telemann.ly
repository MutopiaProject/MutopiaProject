\version "2.12.1"

		\include "1-Affetuoso/Recorder1.ly"
		\include "1-Affetuoso/Recorder2.ly"
		\include "2-Allegro/Recorder1.ly"
		\include "2-Allegro/Recorder2.ly"
		\include "3-Andante/Recorder1.ly"
		\include "3-Andante/Recorder2.ly"
		\include "4-Presto/Recorder1.ly"
		\include "4-Presto/Recorder2.ly"
		
#(set-global-staff-size 18)

\header {
	title = \markup {\with-color #(x11-color 'DarkBlue) \rounded-box \fontsize #4 "Duett"}
        subtitle = \markup {"(TWV 40:107)"} % Centro Bajo Title
	composer = \markup {\fontsize #2  \bold "George Philipp Telemann (1681-1767)"}
	poet = \markup {\fontsize #1 "Der getreue Music-Meister (1728)"}  % Izquierda Arriba
	mutopiatitle = "Duett - (TWV 40:107)"
	mutopiacomposer = "TelemannGP"
	mutopiaopus = "TWV 40:107"
	mutopiainstrument = "Recorder duet"
	source = "Der getreue Music-Meister (1728)"
	style = "Baroque"
	maintainer = "Juanma Perez"
	maintainerEmail = "jperezcastrillo@gmail.com"
	maintainerWeb = "http://www.raiztradicional.blogspot.com"
 	copyright = "Public Domain"
	moreInfo = "https://catalog.lib.ecu.edu/ipac20/ipac.jsp?session=12499SE4P7526.7364505&menu=search&aspect=subtab13&npp=15&ipp=20&spp=20&profile=joyner&ri=&index=.GW&term=TWV+40%3A107&x=0&y=0&aspect=subtab13"

 footer = "Mutopia-2009/08/16-1692"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
	}




\score {
 \context PianoStaff = "Recorder" <<
	\context Staff = "uno" {
        \affetuosouno
 	}
	\context Staff = "dos" {
	\affetuosodos
	}
	>>
	
	\header {
		piece = \markup {\fontsize #2 \with-color #(x11-color 'DarkRed) \rounded-box \bold "Affetuoso"}
	}
	
	\midi {
	}

	\layout  {
	}
}

\score {
 \context PianoStaff = "Recorder" <<
	\context Staff = "uno" {
        \allegrouno
 	}
	\context Staff = "dos" {
        \allegrodos
 	}
	>>
	
	\header {
		piece = \markup {\fontsize #2 \with-color #(x11-color 'DarkRed) \rounded-box \bold "Allegro"}
	}
	
	\midi {
	}

	\layout  {
	}
}

\score {
 \context PianoStaff = "Recorder" <<
	\context Staff = "uno" {
        \andanteuno
 	}
	\context Staff = "dos" {
        \andantedos
 	}
	>>
	\header {
		piece = \markup {\fontsize #2 \with-color #(x11-color 'DarkRed) \rounded-box \bold "Andante"}
	}
	
	\midi {
	}

	\layout  {
	}
}

\score {
 \context PianoStaff = "Recorder" <<
	\context Staff = "uno" {
        \prestouno
 	}
	\context Staff = "dos" {
        \prestodos
 	}
	>>
	
	\header {
		piece = \markup {\fontsize #2 \with-color #(x11-color 'DarkRed) \rounded-box \bold "Presto"}
	}
	
	\midi {
	}

	\layout  {
	}
}

\paper {

 	first-page-number = 1 % Nï¿½mero de la primera pï¿½gina
	%#(set-paper-size "a4") % Tamaï¿½o de la pï¿½gina para apaisado escribir "'landscape"
	%paper-width = 21.0\cm % Anchura de la pï¿½gina
	%paper-height = 30.0\cm % Altura de la pï¿½gina
	top-margin = 1.2\cm % Distancia entre el encabezamiento y la parte superior de la pï¿½gina
	bottom-margin = 1.0\cm % Distancia entre el encabezamiento y la parte inferior de la pï¿½gina
	left-margin = 1.5\cm % Distancia entre el margen izquierdo de la pï¿½gina y el comienzo de la mï¿½sica
	line-width = 18.5\cm % Anchura del pentagrama
	head-separation = 0\cm % Distancia entre el margen superior de la hoja y el comienzo de la mï¿½sica
	foot-separation = 0.0\cm % Distancia entre el margen inferior de la hoja y el final de la mï¿½sica
	% system-count =  %Indica el nï¿½mero de pentagramas en el que dividir la mï¿½sica
	% between-system-space = 15.0\cm % Aprovecha mejor la posiciï¿½n vertical de la pï¿½gina
	after-title-space  = 0.5\cm % Distancia entre el tï¿½tulo y el primer sistema
}

