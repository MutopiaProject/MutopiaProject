% Project Name : Double Concerto Op102
% Fichier :      00_DoubleConcerto_Part05_Horn.ily
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                               H E A D E R                                   #
%###############################################################################
%
%    Composer            : Johannes Brahms (1833 - 1897)
%    Artwork             : Double Concerto for Violin and Violoncello 
%                          in A minor (1st movement)
%    Opus                : 102
%    Year of composition : 1887
%    Source              : Breitkopf and Härtel, 1926-27
%
%###############################################################################
%#                          I N C L U D E   F I L E S                          #
%###############################################################################
\version "2.20.0"
\include "./00-Common/DoubleConcerto_Header.ily"
\include "./00-Common/DoubleConcerto_PaperParts.ily"
\include "./00-Common/DoubleConcerto_timeMvt.ily"
\include "./00-Common/DoubleConcerto_Parts_option.ily"
\include "./00-Common/DoubleConcerto_VoiceName.ily"
\include "./00-Common/DoubleConcerto_markup.ily"
\include "./00-Common/DoubleConcerto_cueVoice.ily"
\include "./01-Mvt1/m01_v09_music_HornI.ily"
\include "./02-Mvt2/m02_v09_music_HornI.ily"
\include "./03-Mvt3/m03_v09_music_HornI.ily"
\include "./01-Mvt1/m01_v10_music_HornII.ily"
\include "./02-Mvt2/m02_v10_music_HornII.ily"
\include "./03-Mvt3/m03_v10_music_HornII.ily"
\include "./01-Mvt1/m01_v11_music_HornIII.ily"
\include "./02-Mvt2/m02_v11_music_HornIII.ily"
\include "./03-Mvt3/m03_v11_music_HornIII.ily"
\include "./01-Mvt1/m01_v12_music_HornIV.ily"
\include "./02-Mvt2/m02_v12_music_HornIV.ily"
\include "./03-Mvt3/m03_v12_music_HornIV.ily"
\include "./00-Common/DoubleConcerto_Format_Part05_Horn.ily"
\addQuote "cueVoiceHrnImI" { \cueVoiceHrnImI }
\addQuote "cueVoiceHrnImII" { \cueVoiceHrnImII }
\addQuote "cueVoiceHrnImIII" { \cueVoiceHrnImIII }
\addQuote "cueVoiceHrnIImI" { \cueVoiceHrnIImI }
\addQuote "cueVoiceHrnIImII" { \cueVoiceHrnIImII }
\addQuote "cueVoiceHrnIImIII" { \cueVoiceHrnIImIII }
\addQuote "cueVoiceHrnIIImI" { \cueVoiceHrnIIImI }
\addQuote "cueVoiceHrnIIImII" { \cueVoiceHrnIIImII }
\addQuote "cueVoiceHrnIIImIII" { \cueVoiceHrnIIImIII }
\addQuote "cueVoiceHrnIVmI" { \cueVoiceHrnIVmI }
\addQuote "cueVoiceHrnIVmII" { \cueVoiceHrnIVmII }
\addQuote "cueVoiceHrnIVmIII" { \cueVoiceHrnIVmIII }
%###############################################################################
%#                          S C O R E    S E C T I O N                         #
%###############################################################################
\book {
	\header {
		subtitle = \markup { \fontsize #3 \sans
			\center-column {
				"Part for Horn"
			}
		}
		subsubtitle = \markup {
			"Brahms - Concerto for Violin and Cello in A Minor"
		}
		instrument = \markup {
			"Horn"
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIVoiceIX
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceIXmvtI \musicHornIMvtI
			}
		>>
		\header {
			breakbefore = ##t
			piece = \markup {
				\fill-line {
					\fontsize #4
					I
				}
			}
		}
		\layout {
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIVoiceIX
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceIXmvtII \musicHornIMvtII
			}
		>>
		\header {
			breakbefore = ##f
			piece = \markup {
				\fill-line {
					\fontsize #4
					II
				}
			}
		}
		\layout {
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIIVoiceIX
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceIXmvtIII \musicHornIMvtIII
			}
		>>
		\header {
			breakbefore = ##f
			piece = \markup {
				\fill-line {
					\fontsize #4
					III
				}
			}
		}
		\layout {
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIVoiceX
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceXmvtI \musicHornIIMvtI
			}
		>>
		\header {
			breakbefore = ##t
			piece = \markup {
				\fill-line {
					\fontsize #4
					I
				}
			}
		}
		\layout {
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIVoiceX
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceXmvtII \musicHornIIMvtII
			}
		>>
		\header {
			breakbefore = ##f
			piece = \markup {
				\fill-line {
					\fontsize #4
					II
				}
			}
		}
		\layout {
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIIVoiceX
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceXmvtIII \musicHornIIMvtIII
			}
		>>
		\header {
			breakbefore = ##f
			piece = \markup {
				\fill-line {
					\fontsize #4
					III
				}
			}
		}
		\layout {
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIVoiceXI
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceXImvtI \musicHornIIIMvtI
			}
		>>
		\header {
			breakbefore = ##t
			piece = \markup {
				\fill-line {
					\fontsize #4
					I
				}
			}
		}
		\layout {
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIVoiceXI
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceXImvtII \musicHornIIIMvtII
			}
		>>
		\header {
			breakbefore = ##f
			piece = \markup {
				\fill-line {
					\fontsize #4
					II
				}
			}
		}
		\layout {
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIIVoiceXI
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceXImvtIII \musicHornIIIMvtIII
			}
		>>
		\header {
			breakbefore = ##t
			piece = \markup {
				\fill-line {
					\fontsize #4
					III
				}
			}
		}
		\layout {
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIVoiceXII
			}
			\new Voice {
				\timeMvtI \generalOptions \partOptions
				\nameVoiceXIImvtI \musicHornIVMvtI
			}
		>>
		\header {
			breakbefore = ##t
			piece = \markup {
				\fill-line {
					\fontsize #4
					I
				}
			}
		}
		\layout {
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIVoiceXII
			}
			\new Voice {
				\timeMvtII \generalOptions \partOptions
				\nameVoiceXIImvtII \musicHornIVMvtII
			}
		>>
		\header {
			breakbefore = ##f
			piece = \markup {
				\fill-line {
					\fontsize #4
					II
				}
			}
		}
		\layout {
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
	\score {
		\new Staff <<
			\new Voice {
				\formatMvtIIIVoiceXII
			}
			\new Voice {
				\timeMvtIII \generalOptions \partOptions
				\nameVoiceXIImvtIII \musicHornIVMvtIII
			}
		>>
		\header {
			breakbefore = ##t
			piece = \markup {
				\fill-line {
					\fontsize #4
					III
				}
			}
		}
		\layout {
			\context {
				\CueVoice \layoutCueVoice
			}
		}
	}
}
