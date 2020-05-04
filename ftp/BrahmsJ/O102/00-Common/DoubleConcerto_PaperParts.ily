% Project Name : Double Concerto Op102
% Fichier :      DoubleConcerto_Paper.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                           P A P E R  S E C T I O N                          #
%###############################################################################
\paper {
	%annotate-spacing = ##t
	ragged-last-bottom = ##t
	ragged-bottom = ##t
	left-margin = 16 \mm
	first-page-number = 0
	bookTitleMarkup = \markup {
		%\override #'(baseline-skip . 3.5)
		\column {
			%\override #'(baseline-skip . 3.5)
			\column {
				\vspace #10
				\fill-line {
					%\huge \larger \larger \bold
					\fromproperty #'header:composer
				}
				\vspace #10
				\fill-line {
					%\large %\bold
					\fromproperty #'header:title
				}
				\vspace #10
				\fill-line {
					%\smaller %\bold
					\fromproperty #'header:subtitle
				}
			}
		}
	}
	oddHeaderMarkup = \markup {
		\on-the-fly \not-first-page \fill-line {
			\null
			\center-column {
				\smaller \fromproperty #'header:subsubtitle
				\fromproperty #'header:instrument
				\vspace #2
			}
			\fromproperty #'page:page-number-string
		}
	}
	evenHeaderMarkup = \markup {
		\on-the-fly \not-first-page \fill-line {
			\fromproperty #'page:page-number-string
			\center-column {
				\smaller \fromproperty #'header:subsubtitle
				\fromproperty #'header:instrument
				\vspace #2
			}
			\null
		}
	}
	oddFooterMarkup = \markup {
		\column {
			\fill-line {
				\on-the-fly #(on-page 1) \fromproperty #'header:copyright
			}
		}
	}
}
