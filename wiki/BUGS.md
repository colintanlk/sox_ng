# BUGS

*The more you look, the more you see.*

Bugs in `sox-14.4.2` are first bulk-listed here as one-liners and then
migrate to the [issues](/sox_ng/sox_ng/issues).

## Already issued

- Fixes for the CVEs (all resolved)
- Patches in
  [Debian](Distro-Debian),
  [Gentoo](Distro-Gentoo),
  [Fedora](Distro-Fedora),
  [80x24](Distro-80x24),
  [Alpine](Distro-Alpine),
  [ALT Linux](Distro-ALT),
  [ArchLinux](Distro-ArchLinux),
  [Artix](Distro-Artix),
  [buildroot](Distro-buildroot),
  [CentOS](Distro-CentOS),
  [CRUX](Distro-CRUX),
  [cygwin](Distro-cygwin),
  [OpenEmbedded](Distro-OpenEmbedded)

## To be issued

### Patches from other distros

See [Distros](Distros).

### [Bugs on `sox.sf.net`](https://sourceforge.net/p/sox/bugs/?limit=100) created since 14.4.2

| BUG | Issue |
| :-- | :---: |
| [377](https://sourceforge.net/p/sox/bugs/377) silence -l does not work correctly  |  |
| [375](https://sourceforge.net/p/sox/bugs/375) 'pipe' STDIN input broken |  |
| [374](https://sourceforge.net/p/sox/bugs/374) autoreconf overwrites INSTALL |  |
| [373](https://sourceforge.net/p/sox/bugs/373) .VOC text not processed  |  |
| [372](https://sourceforge.net/p/sox/bugs/372) threshold parameter for "silence" filter isn't handled correctly.  |  |
| [371](https://sourceforge.net/p/sox/bugs/371) Need a way to specify the directory for temporary files.  |  |
| [370](https://sourceforge.net/p/sox/bugs/370) FPE in SoX 14.4.3git (src/​aiff.c:622:58 in lsx_aiffstartwrite)  |  |
| [369](https://sourceforge.net/p/sox/bugs/369) FPE in SoX 14.4.3git（src/​voc.c:334:18 in read_samples)  |  |
| [368](https://sourceforge.net/p/sox/bugs/368) heap-buffer-overflow in SoX 14.4.3git（src/​hcom.c:160:41 in startread）  |  |
| [367](https://sourceforge.net/p/sox/bugs/367) heap-buffer-overflow in SoX 14.4.3git（src/​formats_i.c:98:16）  |  |
| [366](https://sourceforge.net/p/sox/bugs/366) html and pdf generation is broken  |  |
| [365](https://sourceforge.net/p/sox/bugs/365) sox: Soory, there is no default audio device configured  |  |
| [364](https://sourceforge.net/p/sox/bugs/364) sox spectrogram title option breaks when using keyword  |  |
| [363](https://sourceforge.net/p/sox/bugs/363) sox segfaults when parsing CLI options |  |
| [362](https://sourceforge.net/p/sox/bugs/362) CVE-2021-40426 sphere.c start_read() heap-based buffer overflow vulnerability  |  |
| [361](https://sourceforge.net/p/sox/bugs/361) sox not fading as expected  |  |
| [360](https://sourceforge.net/p/sox/bugs/360) [BUG] two bugs in sox  |  |
| [359](https://sourceforge.net/p/sox/bugs/359) DAT text file format broken on large number channel data files.  |  |
| [358](https://sourceforge.net/p/sox/bugs/358) Segmentation fault when creating a spectrogram with 3kHz limit  |  |
| [356](https://sourceforge.net/p/sox/bugs/356) SoX handles 32bit float files with volume over 0 dBFS incorrectly  |  |
| [355](https://sourceforge.net/p/sox/bugs/355) File Length Error for specific combination of reverb and tremolo  |  |
| [354](https://sourceforge.net/p/sox/bugs/354) Device enumeration duplicates ->Coreaudio.c needs updating to modern APIs |  |
| [352](https://sourceforge.net/p/sox/bugs/352) heap-overflow in formats_i.c  |  |
| [351](https://sourceforge.net/p/sox/bugs/351) div zero in voc.c  |  |
| [350](https://sourceforge.net/p/sox/bugs/350) Heap overflow in hcom.c  |  |
| [349](https://sourceforge.net/p/sox/bugs/349) div zero crash in wav.c  |  |
| [346](https://sourceforge.net/p/sox/bugs/346) sox noisered dies with segv  |  |
| [345](https://sourceforge.net/p/sox/bugs/345) Sox should preserve all aiff headers  |  |
| [343](https://sourceforge.net/p/sox/bugs/343) speed effect not effective using soxlib APIs |  |
| [329](https://sourceforge.net/p/sox/bugs/329) Outputting ogg/​vorbis via the output effect is extremely slow  |  |
| [323](https://sourceforge.net/p/sox/bugs/323) devided by zero issue  |  |
| [322](https://sourceforge.net/p/sox/bugs/322) sox FAIL noisered: multi-channel effect drained asymmetrically! error |  |
| [314](https://sourceforge.net/p/sox/bugs/314) Incorrect work of sox_read function with In-memory output buffers |  |
| [313](https://sourceforge.net/p/sox/bugs/313) libsox.dylib generated incorrectly on OS X 10.10 and later (pending-fixed) |  |
| [309](https://sourceforge.net/p/sox/bugs/309) Preventing division by zero in src/​ao.c  |  |
| [307](https://sourceforge.net/p/sox/bugs/307) Filename with Special Characters fail  |  |
| [304](https://sourceforge.net/p/sox/bugs/304) Incorrect ByteRate and Non-Integer SampleRates  |  |
| [295](https://sourceforge.net/p/sox/bugs/295) clipping warning even with guard  |  |
| [293](https://sourceforge.net/p/sox/bugs/293) stats effect returns -inf if window is set to 0.36 seconds  |  |
| [276](https://sourceforge.net/p/sox/bugs/276) 'gain -n' causes SoX v14.4.2 to not delete tmp file  |  |
| [274](https://sourceforge.net/p/sox/bugs/274) Codec bug in IMA and OKI ADPCM algorithms. |  |
| [263](https://sourceforge.net/p/sox/bugs/263) FAIL sox: Sorry, there is no default audio device configured |  |
| [262](https://sourceforge.net/p/sox/bugs/262) Double free when applying a LADSPA plugin with 2 input channels and 3 output channels |  |

### [Closed bugs on `sox.sf.net`](https://sourceforge.net/p/sox/bugs/search/?q=status%3Aclosed-invalid+or+status%3Aclosed-accepted+or+status%3Aclosed-rejected+or+status%3Aclosed-out-of-date+or+status%3Aclosed-duplicate+or+status%3Aclosed-works-for-me+or+status%3Aclosed+or+status%3Aclosed-wont-fix+or+status%3Aclosed-fixed&limit=250) created since 14.4.2

| BUG | Status | Issue |
| :-- | :----- | :---: |
| [376](https://sourceforge.net/p/sox/bugs/376) mailing lists not working | closed |  |
| [353](https://sourceforge.net/p/sox/bugs/353) Recording 24/​32 bits audio not in proper wave format | closed |  |
| [348](https://sourceforge.net/p/sox/bugs/348) syntax error near unexpected token `-fstack-protector-strong' | closed-invalid |  |
| [347](https://sourceforge.net/p/sox/bugs/347) error metadata.cpp, Line 636 Expression: is_valid() | closed-invalid |  |
| [344](https://sourceforge.net/p/sox/bugs/344) invalid option "-w" error | closed |  |
| [342](https://sourceforge.net/p/sox/bugs/342) sox has exited with error code 2 with Google Speech API | closed |  |
| [341](https://sourceforge.net/p/sox/bugs/341) help text hides option parsing error message | closed-invalid |  |
| [340](https://sourceforge.net/p/sox/bugs/340) Documentation mismatch for -A /​ -U | closed-out-of-date |  |
| [339](https://sourceforge.net/p/sox/bugs/339) trim nr samples different behavior from nr seconds | closed-invalid |  |
| [338](https://sourceforge.net/p/sox/bugs/338) Spectrogram of very BIG file | closed-invalid |  |
| [337](https://sourceforge.net/p/sox/bugs/337) Output wav file >4gb corrupted from Sox remix of 3 wav files nto one wav file | closed-invalid |  |
| [336](https://sourceforge.net/p/sox/bugs/336) Regression from 14.3.2 to 14.4.0 around stdin | closed-out-of-date |  |
| [335](https://sourceforge.net/p/sox/bugs/335) malformed SDS | closed |  |
| [334](https://sourceforge.net/p/sox/bugs/334) Segmentation fault in rate.c:504:30 | closed-fixed |  |
| [333](https://sourceforge.net/p/sox/bugs/333) Assertion fail in rate.c:303 | closed-fixed |  |
| [332](https://sourceforge.net/p/sox/bugs/332) configure fails: syntax error near unexpected token `-Wl,--as-needed' | closed |  |
| [331](https://sourceforge.net/p/sox/bugs/331) A Floating point exception in wav.c:950:80 | closed-invalid |  |
| [330](https://sourceforge.net/p/sox/bugs/330) Playing file through SoX | closed-invalid |  |
| [328](https://sourceforge.net/p/sox/bugs/328) Error code 2 with Google Speech API on EC2 instance | closed-invalid |  |
| [327](https://sourceforge.net/p/sox/bugs/327) Memcpy-param-overlap in mp3-util.h | closed-fixed |  |
| [326](https://sourceforge.net/p/sox/bugs/326) sox_sample_test.h needs math.h for fabs() | closed-fixed |  |
| [325](https://sourceforge.net/p/sox/bugs/325) Integer Overflow in sox-fmt.c | closed-fixed |  |
| [324](https://sourceforge.net/p/sox/bugs/324) Fix broken URLs in man page | closed-fixed |  |
| [321](https://sourceforge.net/p/sox/bugs/321) Stack-Buffer-Overflow in fft4g.c | closed-fixed |  |
| [320](https://sourceforge.net/p/sox/bugs/320) Integer Overflow in xmalloc.h | closed-fixed |  |
| [319](https://sourceforge.net/p/sox/bugs/319) Integer Overflow resulting in Heap-Buffer-Overflow in effect_i_dsp.c | closed-fixed |  |
| [318](https://sourceforge.net/p/sox/bugs/318) NULL pointer dereference in effect_i_dsp.c | closed-fixed |  |
| [317](https://sourceforge.net/p/sox/bugs/317) sox cannot handle true 32 bit | closed-fixed |  |
| [316](https://sourceforge.net/p/sox/bugs/316) sox command | closed-invalid |  |
| [315](https://sourceforge.net/p/sox/bugs/315) Converting the same wav file twice throws different output | closed-invalid |  |
| [312](https://sourceforge.net/p/sox/bugs/312) Null byte at the end of gsrt files causes a click in playback | closed-fixed |  |
| [311](https://sourceforge.net/p/sox/bugs/311) Unexpected display behavior when less than 80 columns | closed-fixed |  |
| [310](https://sourceforge.net/p/sox/bugs/310) Parsing 0-frame aiff file fails with error: Missing SSND chunk in AIFF file | closed-fixed |  |
| [308](https://sourceforge.net/p/sox/bugs/308) [PATCH] assertion failed (core dumped) while converting wav to hcom on 64 bit big endian machine | closed-fixed |  |
| [306](https://sourceforge.net/p/sox/bugs/306) Version info not displayed | closed-fixed |  |
| [305](https://sourceforge.net/p/sox/bugs/305) Sox blocking in an infinite loop when decoding AMR files | closed-fixed |  |
| [303](https://sourceforge.net/p/sox/bugs/303) Sox/​play WAV playing in double speed | closed-duplicate |  |
| [302](https://sourceforge.net/p/sox/bugs/302) Missing $(DESTDIR) before ${bindir} in src/​Makefile.am installcheck | closed-fixed |  |
| [301](https://sourceforge.net/p/sox/bugs/301) Bad FSF address in src/​ladspa.h | closed-fixed |  |
| [300](https://sourceforge.net/p/sox/bugs/300) sox v14.4.2 segmentation violation when playing some wav files generated by Audacity | closed-fixed |  |
| [299](https://sourceforge.net/p/sox/bugs/299) Invalid memory read via crafted .xa file | closed-fixed |  |
| [298](https://sourceforge.net/p/sox/bugs/298) Use-after-free while feeding malformed aiff file | closed-fixed |  |
| [297](https://sourceforge.net/p/sox/bugs/297) SoX v14.4.2 vulnerable to a heap use-after-free condition after parsing AIFF file and calling sox_append_comments() | closed-fixed |  |
| [296](https://sourceforge.net/p/sox/bugs/296) CVE-2017-11332, CVE-2017-11332, CVE-2017-11359 | closed-fixed |  |
| [294](https://sourceforge.net/p/sox/bugs/294) Wrong conversion from 8 bit to 16 bit | closed-rejected |  |
| [292](https://sourceforge.net/p/sox/bugs/292) Precision of 32-bit float appears incorrect | closed-invalid |  |
| [291](https://sourceforge.net/p/sox/bugs/291) Support ID3 tags version 2.4 | closed-invalid |  |
| [290](https://sourceforge.net/p/sox/bugs/290) sox_open_mem_write() on windows not worked | closed-wont-fix |  |
| [286](https://sourceforge.net/p/sox/bugs/286) Skipped AIFF chunks fail to account for pad byte. | closed-fixed |  |
| [285](https://sourceforge.net/p/sox/bugs/285) pipe decoded audio from ffmpeg to sox | closed-wont-fix |  |
| [284](https://sourceforge.net/p/sox/bugs/284) Please update LibFlac.vcxproj to work with flac 1.3 | closed |  |
| [283](https://sourceforge.net/p/sox/bugs/283) Z_SOLO macro in LibZLib.vcxproj | closed |  |
| [282](https://sourceforge.net/p/sox/bugs/282) Compiler error C2039 in VS 2015 | closed-fixed |  |
| [281](https://sourceforge.net/p/sox/bugs/281) repeat not working in a chain of effects | closed-invalid |  |
| [278](https://sourceforge.net/p/sox/bugs/278) Infinite loop, info command and verbose output for corrupt WAV file | closed-fixed |  |
| [277](https://sourceforge.net/p/sox/bugs/277) pulseaudio sound handler is buggy/​inconsistent | closed-fixed |  |
| [275](https://sourceforge.net/p/sox/bugs/275) Different output length from trim if source is AIFF file | closed |  |
| [273](https://sourceforge.net/p/sox/bugs/273) stdin/​stdout not released when lsx_close called | closed-fixed |  |
| [272](https://sourceforge.net/p/sox/bugs/272) sox_formats_quit does not properly clean things up | closed-fixed |  |
| [271](https://sourceforge.net/p/sox/bugs/271) Can't open files which contains foreign characters | closed-duplicate |  |
| [270](https://sourceforge.net/p/sox/bugs/270) Current git fails to build debian package on Debian and Ubuntu | closed-fixed |  |
| [269](https://sourceforge.net/p/sox/bugs/269) sox play fails following Ubuntu 14.04 upgrade (3.13.0-65-generic) | closed-invalid |  |
| [268](https://sourceforge.net/p/sox/bugs/268) Permission denied | closed-invalid |  |
| [267](https://sourceforge.net/p/sox/bugs/267) "Bit-depth" stats result changes when signal is inverted | closed-fixed |  |
| [266](https://sourceforge.net/p/sox/bugs/266) sox-14.4.2/​src/​mp3.c:407: undefined reference to `lsx_error' | closed-fixed |  |
| [265](https://sourceforge.net/p/sox/bugs/265) Multiple memory corruption vulnerabilities in SoX 14.4.2 | closed-fixed |  |
| [264](https://sourceforge.net/p/sox/bugs/264) sox is losing frames when trimming | closed-out-of-date |  |
| [261](https://sourceforge.net/p/sox/bugs/261) absurd docs bug - PDF is doubled 14.4.1 and 14.4.2 | closed-fixed |  |
| [260](https://sourceforge.net/p/sox/bugs/260) Reading from memory files depends upon uninitialized value read | closed-fixed |  |

### [Patches on `sox.sf.net`](https://sourceforge.net/p/sox/bugs/?limit=100)

| Patch | Issue |
| :---- | :---: |
| [129](https://sourceforge.net/p/sox/patches/129) a sane build system |  |
| [128](https://sourceforge.net/p/sox/patches/128) Division by zero at `wav.c:967` |  |
| [127](https://sourceforge.net/p/sox/patches/127) Division by zero at `voc.c:334` |  |
| [126](https://sourceforge.net/p/sox/patches/126) Global-buffer-overflow at `adpcms.c:58` |  |
| [125](https://sourceforge.net/p/sox/patches/125) Fix `property_size = sizeof(name)` |  |
| [124](https://sourceforge.net/p/sox/patches/124) low-latency pulseaudio pipeline using --input-buffer |  |
| [123](https://sourceforge.net/p/sox/patches/123) configure.ac: fix static linking with id3tag |  |
| [122](https://sourceforge.net/p/sox/patches/122) configure.ac: put back --disable-protector |  |
| [121](https://sourceforge.net/p/sox/patches/121) Full RF64 support |  |
| [120](https://sourceforge.net/p/sox/patches/120) Initialize channel map for pulseaudio |  |
| [116](https://sourceforge.net/p/sox/patches/116) [PATCH] Adding FFTW support speeds up spectrogram by factor of ten |  |
| [108](https://sourceforge.net/p/sox/patches/108) Fix multi-channel LADSPA effects + draining for all LADSPA effects |  |
| [107](https://sourceforge.net/p/sox/patches/107) Win32 Progress Flush Fix |  |
| [106](https://sourceforge.net/p/sox/patches/106) Support for "DynAudNorm" Effect |  |
| [105](https://sourceforge.net/p/sox/patches/105) Win32 Unicode (UTF-8) support |  |
| [104](https://sourceforge.net/p/sox/patches/104) missing version number in sox --version output |  |
| [103](https://sourceforge.net/p/sox/patches/103) ignore SIGPIPE so stop callbacks may fire |  |
| [102](https://sourceforge.net/p/sox/patches/102) [PATCH] modified spectrogram hh:mm:ss in X-axis |  |
| [94](https://sourceforge.net/p/sox/patches/94) libmpg123 support for mp3 decoding |  |
| [93](https://sourceforge.net/p/sox/patches/93) flac (decoder): simplify EOF state and fix MD5 check |  |
| [89](https://sourceforge.net/p/sox/patches/89) Docs: libsox.3 update |  |
| [65](https://sourceforge.net/p/sox/patches/65) Enable SoX to be built as a Windows DLL |  |
| [41](https://sourceforge.net/p/sox/patches/41) MIDI Sample Dump Module |  |
| [35](https://sourceforge.net/p/sox/patches/35) Amiga Module support |  |

### [Feature requests on `sox.sf.net`](https://sourceforge.net/p/sox/bugs/?limit=100)

| Feature | Issue |
| :------ | :---: |
| [236](https://sourceforge.net/p/sox/feature-requests/236) Citation form |  |
| [235](https://sourceforge.net/p/sox/feature-requests/235) Respect LD_LIBRARY_PATH for handler loading |  |
| [234](https://sourceforge.net/p/sox/feature-requests/234) Can Normalization Be Dom Independently For Each Channel |  |
| [233](https://sourceforge.net/p/sox/feature-requests/233) macos: curl not wget |  |
| [232](https://sourceforge.net/p/sox/feature-requests/232) Audio libraries |  |
| [231](https://sourceforge.net/p/sox/feature-requests/231) OptimFROG (ofr) Support |  |
| [230](https://sourceforge.net/p/sox/feature-requests/230) Support overlapping fade effect |  |
| [229](https://sourceforge.net/p/sox/feature-requests/229) Monkeys Audio (APE) Support |  |
| [228](https://sourceforge.net/p/sox/feature-requests/228) Remix: Arbitrary select channels from each input file |  |
| [227](https://sourceforge.net/p/sox/feature-requests/227) The length of output data is not reported for sox_open_mem_write() |  |
| [226](https://sourceforge.net/p/sox/feature-requests/226) eekable support in sox_open_memstream_write() and sox_open_mem_write() |  |
| [225](https://sourceforge.net/p/sox/feature-requests/225) Spectrogram - Log/​MEL/​Bark frequency scaling options |  |
| [224](https://sourceforge.net/p/sox/feature-requests/224) Support arbitrary bits number. (ie: -b 20 ) |  |
| [223](https://sourceforge.net/p/sox/feature-requests/223) Get in-file loop information |  |
| [221](https://sourceforge.net/p/sox/feature-requests/221) Implement DSF support |  |
| [220](https://sourceforge.net/p/sox/feature-requests/220) GUI Frontend |  |
| [219](https://sourceforge.net/p/sox/feature-requests/219) SAPI event data (EVNT chunk) |  |
| [216](https://sourceforge.net/p/sox/feature-requests/216) Equalizer and Convolution (FIR) of stereo files. |  |
| [215](https://sourceforge.net/p/sox/feature-requests/215) rate with multiply/​divide of sampling rate |  |
| [214](https://sourceforge.net/p/sox/feature-requests/214) Comment in spectrogram not supporting non-ASCII |  |
| [213](https://sourceforge.net/p/sox/feature-requests/213) Add mp3 support by default as it became patent free on 16 April 2017 |  |
| [212](https://sourceforge.net/p/sox/feature-requests/212) Convolver |  |
| [211](https://sourceforge.net/p/sox/feature-requests/211) use passband and move in frequency |  |
| [210](https://sourceforge.net/p/sox/feature-requests/210) Add .xtr audio file format |  |
| [208](https://sourceforge.net/p/sox/feature-requests/208) export phase info as png via spectrogram |  |
| [207](https://sourceforge.net/p/sox/feature-requests/207) spectogram to svg |  |
| [206](https://sourceforge.net/p/sox/feature-requests/206) Add codec2 for low bitrate voice as a replacement for LPC-10. |  |
| [205](https://sourceforge.net/p/sox/feature-requests/205) Feature request - default audio device |  |
| [204](https://sourceforge.net/p/sox/feature-requests/204) sox.html |  |
| [203](https://sourceforge.net/p/sox/feature-requests/203) Support for M4A? |  |
| [202](https://sourceforge.net/p/sox/feature-requests/202) Support "pcm" format of the game "Dracula X" (sega saturn) |  |
| [201](https://sourceforge.net/p/sox/feature-requests/201) Add sound meter features |  |
| [200](https://sourceforge.net/p/sox/feature-requests/200) adp format request for conversion |  |
| [199](https://sourceforge.net/p/sox/feature-requests/199) simpler standalone binary please |  |
| [198](https://sourceforge.net/p/sox/feature-requests/198) fixed normalization |  |
| [197](https://sourceforge.net/p/sox/feature-requests/197) SetRecordingDurationBySox |  |
| [196](https://sourceforge.net/p/sox/feature-requests/196) fade based on previous and next file in concatenation of audio files |  |
| [195](https://sourceforge.net/p/sox/feature-requests/195) Display audio properties and spectrogram settings in spectrograms |  |
| [194](https://sourceforge.net/p/sox/feature-requests/194) Enable AMR-WB encoding support in SoX |  |
| [193](https://sourceforge.net/p/sox/feature-requests/193) Spectrum of Frequencies into dat file |  |
| [192](https://sourceforge.net/p/sox/feature-requests/192) Opus File Encoding Support |  |
| [190](https://sourceforge.net/p/sox/feature-requests/190) Save spectrograms as text file |  |
| [189](https://sourceforge.net/p/sox/feature-requests/189) Reading Support (or more) for DTS-HD |  |
| [188](https://sourceforge.net/p/sox/feature-requests/188) new release with opus file reading support? |  |
| [187](https://sourceforge.net/p/sox/feature-requests/187) Square (U parabola) fade |  |
| [183](https://sourceforge.net/p/sox/feature-requests/183) soxi to JSON |  |
| [181](https://sourceforge.net/p/sox/feature-requests/181) Can´t read Large Wave files (No Header) |  |
| [180](https://sourceforge.net/p/sox/feature-requests/180) Higher Precision with Speed. |  |
| [179](https://sourceforge.net/p/sox/feature-requests/179) append to tags |  |
| [178](https://sourceforge.net/p/sox/feature-requests/178) Waveform Display for SoX |  |
| [177](https://sourceforge.net/p/sox/feature-requests/177) WavPack ReplayGain support |  |
| [176](https://sourceforge.net/p/sox/feature-requests/176) Log Frequency Scale for Spectrogram |  |
| [175](https://sourceforge.net/p/sox/feature-requests/175) Use pkg-config for all library detection |  |
| [174](https://sourceforge.net/p/sox/feature-requests/174) Sidechain functionality for compand/​mcompand effects |  |
| [173](https://sourceforge.net/p/sox/feature-requests/173) dsd to pcm support |  |
| [172](https://sourceforge.net/p/sox/feature-requests/172) logarithmic fade only spans across half the fade-out-length |  |
| [170](https://sourceforge.net/p/sox/feature-requests/170) alpha channel for spectrograms |  |
| [168](https://sourceforge.net/p/sox/feature-requests/168) wish: raw, realtime spectrogram data (graphical equaliser) |  |
| [167](https://sourceforge.net/p/sox/feature-requests/167) Statistics: EBU R128 specifications | #151 |
| [166](https://sourceforge.net/p/sox/feature-requests/166) SoX for WinCE |  |
| [165](https://sourceforge.net/p/sox/feature-requests/165) Better directory support |  |
| [164](https://sourceforge.net/p/sox/feature-requests/164) play: interactive selection of output channels |  |
| [163](https://sourceforge.net/p/sox/feature-requests/163) Apply effects to specific channels only |  |
| [162](https://sourceforge.net/p/sox/feature-requests/162) Plot combined response of cascaded filters |  |
| [161](https://sourceforge.net/p/sox/feature-requests/161) time stretch with DIRAC alg. |  |
| [156](https://sourceforge.net/p/sox/feature-requests/156) v4.13 Fake temporary files in Windows |  |
| [154](https://sourceforge.net/p/sox/feature-requests/154) ima-adpcm in RAW |  |
| [153](https://sourceforge.net/p/sox/feature-requests/153) New feature: using a profile for highpass/​lowpass filter |  |
| [150](https://sourceforge.net/p/sox/feature-requests/150) Tape wow and flutter correction |  |
| [149](https://sourceforge.net/p/sox/feature-requests/149) Request for Project Wiki |  |
| [147](https://sourceforge.net/p/sox/feature-requests/147) Deliver libsox.dll for win32 |  |
| [146](https://sourceforge.net/p/sox/feature-requests/146) Will G.723 (111) be added for wav files? |  |
| [145](https://sourceforge.net/p/sox/feature-requests/145) Request for different tunings in synth |  |
| [144](https://sourceforge.net/p/sox/feature-requests/144) Mac OS X binaries info |  |
| [141](https://sourceforge.net/p/sox/feature-requests/141) Stereo center removal (not oops) |  |
| [135](https://sourceforge.net/p/sox/feature-requests/135) CAF with IMA4 support |  |
| [134](https://sourceforge.net/p/sox/feature-requests/134) Monkey's Audio decoding support |  |
| [129](https://sourceforge.net/p/sox/feature-requests/129) Add sox_add_effect_with_auto() utility |  |
| [128](https://sourceforge.net/p/sox/feature-requests/128) Do not export lsx_ symbols in libsox |  |
| [127](https://sourceforge.net/p/sox/feature-requests/127) Allow inputs to have different rates while concat'ing |  |
| [125](https://sourceforge.net/p/sox/feature-requests/125) Split existing speech file on silence |  |
| [124](https://sourceforge.net/p/sox/feature-requests/124) Fade out should allow stop-time="end of the file" with pipes |  |
| [123](https://sourceforge.net/p/sox/feature-requests/123) Support DDWAV files |  |
| [122](https://sourceforge.net/p/sox/feature-requests/122) Error handling .ACT wav files |  |
| [121](https://sourceforge.net/p/sox/feature-requests/121) soxrc |  |
| [119](https://sourceforge.net/p/sox/feature-requests/119) RMS Normlization |  |
| [117](https://sourceforge.net/p/sox/feature-requests/117) Format lists in --help text |  |
| [113](https://sourceforge.net/p/sox/feature-requests/113) dynamic SoX Effects |  |
| [109](https://sourceforge.net/p/sox/feature-requests/109) sox as vst plugin |  |
| [108](https://sourceforge.net/p/sox/feature-requests/108) OSS plugin should support 24 and 32 bit formats |  |
| [103](https://sourceforge.net/p/sox/feature-requests/103) Support .mpc |  |
| [102](https://sourceforge.net/p/sox/feature-requests/102) Support for .act |  |
| [101](https://sourceforge.net/p/sox/feature-requests/101) Support .ape |  |
| [99](https://sourceforge.net/p/sox/feature-requests/99) Replace or supplement use of wget with (lib)curl |  |
| [96](https://sourceforge.net/p/sox/feature-requests/96) Push file detection into libmagic and use that |  |
| [95](https://sourceforge.net/p/sox/feature-requests/95) Separate formats and CODECs |  |
| [94](https://sourceforge.net/p/sox/feature-requests/94) Make effects LV2 (LADSPA v2) plugins |  |
| [93](https://sourceforge.net/p/sox/feature-requests/93) Add portaudio support |  |
| [92](https://sourceforge.net/p/sox/feature-requests/92) Add re-encapsulation of lossy formats |  |
| [91](https://sourceforge.net/p/sox/feature-requests/91) silence coordinates |  |
| [83](https://sourceforge.net/p/sox/feature-requests/83) Move file formats into libsndfile |  |
| [82](https://sourceforge.net/p/sox/feature-requests/82) Add Octave filtering |  |
| [79](https://sourceforge.net/p/sox/feature-requests/79) Make "echo -s" an alias of echos |  |
| [72](https://sourceforge.net/p/sox/feature-requests/72) Improve WAV handler's treatment of non-audio chunks |  |
| [70](https://sourceforge.net/p/sox/feature-requests/70) Make libst failure-resistant |  |
| [69](https://sourceforge.net/p/sox/feature-requests/69) Use word-alignment for WAV |  |
| [64](https://sourceforge.net/p/sox/feature-requests/64) Implement speex format (http:/​/​www.speex.org) |  |
| [63](https://sourceforge.net/p/sox/feature-requests/63) Add MP3 support to WAV handler |  |
| [55](https://sourceforge.net/p/sox/feature-requests/55) support replaygain tags |  |
| [50](https://sourceforge.net/p/sox/feature-requests/50) vocoder |  |
| [32](https://sourceforge.net/p/sox/feature-requests/32) Support .dss - Digital Speech Standard |  |
| [25](https://sourceforge.net/p/sox/feature-requests/25) Convert AKAI cdrom |  |
| [17](https://sourceforge.net/p/sox/feature-requests/17) Loop points not preserved |  |
| [9](https://sourceforge.net/p/sox/feature-requests/9) Restore clipped peaks in a waveform? |  |

## To be added here

...or directly to the issues:

### Other patches from the [Distros](Distros)

Among which:
  * [haiku](https://github.com/haikuports/haikuports/blob/master/media-sound/sox/sox-14.4.2.recipe) One patch for haiku
  * [KaOS](https://github.com/KaOSx/main/tree/master/sox) one patch for ffmpeg0.11
  * [MacPorts](https://ports.macports.org/port/sox/details) Two patches:
    * Fix build on Yosemite
    * add curl support
  * [Mageia](http://sophie.zarb.org/rpms/105748d9b69c7cca6fb7015e9d2337fa/files) 7 CVE patches
  * [MSYS2 mingw](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-sox) One patch:
    * `ucrt-no-rewind-pipe`
  * [OpenEuler](https://gitee.com/src-openeuler/sox/tree/openEuler-23.09) 12 patches
  * [OpenIndiana](https://github.com/OpenIndiana/oi-userland/tree/7942b0829973c7a732d67ca3e0bb240679fac40e/components/multimedia/sox/patches) 3 patches:
    * `formats.c`: update to 14.4.2; drop 32 bit
	* `libsox.c`: avoid dependencies on encumbered packages
	* `disableencumbered`: update to 14.4.2; drop 32 bit
  * [OpenWRT](https://github.com/openwrt/packages/tree/master/sound/sox/patches) 3 patches:
    * cross_compile
	* `fix_uclibc_build_issue`
	* `reproducible-builds`
  * [pkgsrc](http://cvsweb.netbsd.org/bsdweb.cgi/pkgsrc/audio/sox/patches) 
    * `patch-src_oss.c`: Prevent a segfault when playing certain WAV files. From Onno van ...
    * `patch-src_sox.c`: PR pkg/56800 hitting v or V during sox's play command causes a segfault from On...
    * `patch-src_sunaudio.c`: PR pkg/56800 hitting v or V during sox's play command causes a segfault from On...
  * [PLD Linux](https://git.pld-linux.org/?p=packages/sox.git;a=tree) 3 patches:
    * sox-dyn
    * sox-link
    * sos-system-lpc10
  * [Redhat bug tracker](https://bugzilla.redhat.com/buglist.cgi?component=sox)
  * [Ubuntu bug tracker](https://launchpad.net/ubuntu/+source/sox/+bugs)

### The forks

See [Forks](Forks).

### sox.sf.net commits since 14.4.2

* The [182 commits](https://sourceforge.net/p/sox/code/commit_browser)
  since 14.4.2 on `sox.sf.net` that have not already been added

### Other

* [Cannot play/record under Windows](https://public-inbox.org/sox-users/57c1e579.46d0620a.54ca2.c765@mx.google.com/t/) fails in 14.4.2, works in 14.4.1
* `release.sh` is said not to work
