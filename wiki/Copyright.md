# Copyright

## Conclusion

SoX is GPL2-only because `src/opus.c` is based on `oggenc.c` which is GPL2
so the work as a whole is GPL2.
Individual source files have further licence terms which should be
respected if they are reused.

Let's have a look.

## Blanket copyright statement

SoX's `COPYING` file reads:
```
SoX source code is distributed under two main licenses. The two
licenses are in the files LICENSE.GPL and LICENSE.LGPL.

sox.c, and thus SoX-the user application, is distributed under the
GPL, while the files that make up libsox are licensed under the less
restrictive LGPL.
```
where `LICENSE.GPL` is the GPL Version 2 or later and
`LICENSE.LGPL` is the LGPL Version 2.1 or later.

The top level `Makefile.am` and `configure.ac` and
`src/{Makefile.am,optional-fmts.am}` have no copyright notice.

## 193 `src/*.[ch]` files:

### 179 are free software

#### 139 are GPL

and have one of
```
 * Copyright (C) 1996-2007
 *      Thomas Sailer (sailer@ife.ee.ethz.ch) (HB9JNX/AE4WA)
 *      Swiss Federal Institute of Technology, Electronics Lab
 * Copyright (C) 1999 Jan Paul Schmidt <jps@fundament.org>
 * Copyright (C) 1999 Stanley J. Brooks <stabro@megsinet.net>
 * Copyright (C) 2000-2002 Richard W.E. Furse, Paul Barton-Davis, Stefan Westerfeld.
 * Copyright 2005-2012 Chris Bagwell and SoX Contributors
 * (c) 2005-11 Chris Bagwell and SoX contributors
 * (c) 2006-14 robs@users.sourceforge.net
 * (c) 2007 robs@users.sourceforge.net
 * (c) Reuben Thomas <rrt@sc3d.org> 2007
 * Copyright 2007 Reuben Thomas <rrt@sc3d.org>
 * Copyright (c) 2008 robs@users.sourceforge.net
 * (c) 2011 Doug Cook and SoX contributors
 * Copyright (c) 2007-9 SoX contributors
 * (c) 2006-2012 SoX contributors
 * (c) SoX Contributers
```
and one of
```
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
```
or
```
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or (at
 * your option) any later version.
```

#### 38 are "freely distributable for any purpose"

##### 30 have one of:

```
 * Copyright 1991-2007 Guido van Rossum And Sundry Contributors
 * Copyright 1991-2007 Lance Norskog And Sundry Contributors
 * Copyright 1992 Leigh Smith And Sundry Contributors
 * Copyright 1997 Chris Bagwell And Sundry Contributors
 * (c) 1998-2012 Chris Bagwell and SoX contributors
 * Copyright 1999-2006 Chris Bagwell And Nick Bailey
 * Copyright (C) 1998 Juergen Mueller And Sundry Contributors
 * Copyright 1999 Ian Turner (vectro@vectro.org)
 * Copyright (c) 2000 Edward Beingessner And Sundry Contributors
```

##### `opus.c`

```
 * Copyright (C) 2013 John Stumpo <stump@jstump.com>
 *
 * Largely based on vorbis.c:
 * libSoX Ogg Vorbis sound format handler
 * Copyright 2001, Stan Seibert <indigo@aztec.asu.edu>
 *
 * Portions from oggenc, (c) Michael Smith <msmith@labyrinth.net.au>,
 * ogg123, (c) Kenneth Arnold <kcarnold@yahoo.com>, and
 * libvorbisfile (c) Xiphophorus Company
 ...
 * July 5, 1991 - Skeleton file
 * Copyright 1991 Lance Norskog And Sundry Contributors
 ...
 * This source code is freely redistributable and may be used for
 * any purpose.  This copyright notice must be maintained.
```
* `oggenc.c` in the distribution `vorbis-tools` is GPLv2 (*not* "or later")
* `vorbis.c` does not exist in `vorbis-tools` but all other files
  copyrighted to Stan Seibert are GPLv2. so this file is not
  "freely distributable" but GPLv2. 

##### `fft4g.c`

```
/* Copyright Takuya OOURA, 1996-2001.

You may use, copy, modify and distribute this code for any purpose
(include commercial use) and without fee.
Please refer to this package when you modify this code.

Package home:  http://www.kurims.kyoto-u.ac.jp/~ooura/fft.html"
```
and the link is question is still on the web (on 2024-06-14).

##### `g711.[ch]`

```
 * Permission to use, copy, modify, and distribute this software and its
 * documentation for any purpose and without fee is hereby granted, provided
 * that the above copyright notice appear in all copies and that both that
 * copyright notice and this permission notice appear in supporting
 * documentation.
```
##### `g721.c` `g723_24.c` `g723_40.c` `g72x.h`

```
 * This source code is a product of Sun Microsystems, Inc. and is provided
 * for unrestricted use.  Users may copy or modify this source code without
 * charge.
```

##### `sndio.c`

```
 * Copyright (c) 2009 Alexandre Ratchov <alex@caoua.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
```

#### 2 are both GPL and "freely distributable for any purpose"

##### `synth.c`

```
 * Copyright (c) 2001-2009 SoX contributors
 * Copyright (c) Jan 2001  Carsten Borchardt
 *
 * This source code is freely redistributable and may be used for any purpose.
 * This copyright notice must be maintained.  The authors are not responsible
 * for the consequences of using this software.
 *
 * Except for synth types: pluck, tpdf, pinknoise, & brownnoise, and
 *            sweep types: linear, square & exp, which are:
 *
 * Copyright (c) 2006-2013 robs@users.sourceforge.net
 *
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or (at
 * your option) any later version.
```

##### `formats.c`

```
 * (c) 2005-8 Chris Bagwell and SoX contributors
 *
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or (at
 * your option) any later version.
```
and at line 1255 of 1288:
```
 * (c) 2005-9 Chris Bagwell and SoX contributors.
 * Copyright 1991 Lance Norskog And Sundry Contributors.
 *
 * This source code is freely redistributable and may be used for any
 * purpose.  This copyright notice must be maintained.
```

### 14 are not copyrighted

#### 2 have  no statement of copyright holder

##### `effects.h` and `fft4g.h`

```
/* This library is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or (at
 * your option) any later version.
```
Both were originally committed by Rob Sykes, who writes on 2024-07-13:
> both of those headers look like my handiwork so feel free
> to add my name to them.

#### 6 are copyrighted with no licence statement

##### `coreaudio.c` and `pulseaudio.c`

```
 * Copyright 2008 Chris Bagwell And Sundry Contributors
```

##### `dcshift.c`

```
 * (c) 2000.04.15 Chris Ausbrooks <weed@bucket.pp.ualr.edu>
 *
 * based on vol.c which is
 * (c) 20/03/2000 Fabien COELHO <fabien@coelho.net> for sox.
```

##### `stretch.c`

```
(c) march/april 2000 Fabien COELHO <fabien@coelho.net> for sox.
```

##### `vol.c`

```
/* Copyright (c) 20/03/2000 Fabien COELHO <fabien@coelho.net>
 * Copyright (c) 2000-2007 SoX contributors
```

##### `wav.c`

```
 * Copyright 1998-2006 Chris Bagwell and SoX Contributors
 * Copyright 1997 Graeme W. Gill, 93/5/17
 * Copyright 1992 Rick Richardson
 * Copyright 1991 Lance Norskog And Sundry Contributors
```

#### 2 are attributed but have no copyright statement

##### `mp3.c`

```
 * Written by Fabrizio Gennari <fabrizio.ge@tiscali.it>
 *
 * The decoding part is based on the decoder-tutorial program madlld
 * written by Bertrand Petit <madlld@phoe.fmug.org>
```

##### `silence.c`

```
 * by Heikki Leinonen (heilei@iki.fi) 25.03.2001
 * Major Modifications by Chris Bagwell 06.08.2001
 * Minor addition by Donnie Smith 13.08.2003
```

#### 4 have no copyright statement

##### `8svx.c`

##### `dft_filter.h`

##### `dither.h`

##### `soxomp.h`

## lpc10

`lpc10` is a low bandwidth speech codec by the US Department of Defense
whose source code is included in SoX.

No files in 14.4.2's `lpc10/` directory contain copyright statements
and were derived by translating the original Fortran code to C using `f2c`
and hand-editing the results.

The [original Fortran code](https://github.com/jafingerhut/lpc10/blob/main/original-code)
was written by the US Department of Defense, its file modification times
range from February 1990 to October 1993 and it contains no copyright notices
but its `README` file is headed
```
              U.S. Department of Defense
             LPC-10 2400 bps Voice Coder
                   Release 1.0
                   October 1993
```
and its FAQ file says
```
The "AD" ordering number for the CELP software is AD M000 118
(US$ 90.00) and for the TIB it's AD A256 629 (US$ 17.50).  The LPC-10
standard, described below, is FIPS Pub 137 (US$ 12.50).  There is a
$3.00 shipping charge on all U.S. orders.  The telephone number for
their automated system is 703-487-4650, or 703-487-4600 if you'd prefer
to talk with a real person.

(U.S. DoD personnel and contractors can receive the package from the
Defense Technical Information Center:  DTIC, Building 5, Cameron
Station, Alexandria, VA 22304-6145.  Their telephone number is
703-274-7633.)
```
It was translated to C from February to October 1996 and is maintained
[on github](https://github.com/jafingerhut/lpc10) by its translator
who wrote in its `README` file:

> Because of the history of this implementation, the copyright
> and license status is still not completely clear to me,
> for reasons discussed further below. It might be in the
> public domain, but if the legal answer matters to you
> in any significant way, I suggest consulting an attorney
> who specialies in intellectual property law.

Legal advice from the FSF:

> Works of the US may be considered public domain
> (IIRC, they are technically uncopyrightable), but the fact that
> it's a work of the US should ideally be checked, and a note added
> in the files in question.

> If the translation is made with a grain of creativity,
> its authors may hold copyright on it independently,
> therefore their separate permission is needed for the work to be free.

> "Work of the US" means that it is legally a work of the state.

has lead to a [new release](https://github.com/jafingerhut/lpc10) with
an explicit copyright notice on all C source files under
the BSD 3-clause new or revised license.

## libgsm

[Redhat's source rpm for sox](https://kojipkgs.fedoraproject.org//packages/sox/14.4.2.0/38.fc40/src/sox-14.4.2.0-38.fc40.src.rpm)
contains a modified version of sox-14.4.2 which adds a missing copyright
statement for libgsm that was removed when the library was imported into SoX.

## Optional libraries

SoX's `COPYING` file says:

```
Note that some of the external packages that can be linked into libsox
are GPLed and/or may have licensing problems, so they can be disabled
at configure time with the relevant--with-* options. If libsox is built
with such libraries, it must be distributed under the GPL.
```
and an FSF representative writes:
> You'll have to check what the real licenses are, and update INSTALL 
  (or SoX programs if they turn out GPL-incompatible).
> For example, 'GPL' may mean GPLv2-only, making it non-compliant
  with Savannah hosting requirements (GPLv3 or later).

### The external libraries

`INSTALL` says that the optional libraries it can use, and their licences, are:
```
OpencoreAMR-NB/WB http://sourceforge.net/projects/opencore-amr  Apache v2.0
VisualOn AMR-WB   http://sourceforge.net/projects/opencore-amr  Apache v2.0
AO                http://xiph.org/ao                    GPL v2 or later
FLAC              http://flac.sourceforge.net           GPL v2 or later, LGPL v2.1 or later and Xiph licence
LADSPA            http://www.ladspa.org                 LGPL v2.1 or later
Lame MP3 encoder  http://lame.sourceforge.net           LGPL v2 or later; some source files include no copyright notice
Twolame MP2 enc.  http://www.twolame.org                LGPL v2.1 or later
libltdl           http://www.gnu.org/software/libtool   LGPL v2 or later
MAD MP3 decoder   http://www.underbit.com/products/mad  GPL v2 or later
MP3 ID3 tags      http://www.underbit.com/products/mad  GPL v2 or later
Magic             http://www.darwinsys.com/file         (Two clause BSD)
Ogg Vorbis        http://www.vorbis.com                 (Xiph)
Opus              http://www.opus-codec.org/            (Two clause BSD)
PNG               http://www.libpng.org/pub/png         (zlib)
Sndfile           http://www.mega-nerd.com/libsndfile   LGPL v2.1 or later
WavPack           http://www.wavpack.com                (WavPack)
```
### The licences

#### [Apache v2.0](https://sourceforge.net/p/opencore-amr/code/ci/master/tree/LICENSE)

An FSF lawyer writes:
> [Apache License Version 2.0 is compatible with GPLv3](https://sourceforge.net/p/opencore-amr/code/ci/master/tree/LICENSE)

#### Two clause BSD

```
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

- Redistributions of source code must retain the above copyright
notice, this list of conditions and the following disclaimer.

- Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.
```

#### Xiph

```
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

- Redistributions of source code must retain the above copyright
notice, this list of conditions and the following disclaimer.

- Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.

- Neither the name of the Xiph.org Foundation nor the names of its
contributors may be used to endorse or promote products derived from
this software without specific prior written permission.
```

#### WavPack

```
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice,
      this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice,
      this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of Conifer Software nor the names of its contributors
      may be used to endorse or promote products derived from this software
      without specific prior written permission.
```

#### zlib

```
Permission is hereby granted to use, copy, modify, and distribute
this software, or portions hereof, for any purpose, without fee,
subject to the following restrictions:

 1. The origin of this software must not be misrepresented; you
    must not claim that you wrote the original software.  If you
    use this software in a product, an acknowledgment in the product
    documentation would be appreciated, but is not required.

 2. Altered source versions must be plainly marked as such, and must
    not be misrepresented as being the original software.

 3. This Copyright notice may not be removed or altered from any
    source or altered source distribution.
```

## Analysis

- `opus.c` is based on `oggenc.c` which is GPLv2
- The uncopyrighted files have been copyrighted either by contacting theis
  suthors or th the person who first comitted them.
- Of the 6 copyrighted with no explicit license
  - 3 are copyright Chris Bagwell and defer to the blanket copyright statement
  * 3 are copyright Fabien Coelho who writes on 2024-6-16:
    > I hereby grant permission to use my code that is included in SoX for any purpose
- lpc10 has been upgraded to the new release, which is BSD 3-clause,
- libgsm has got its missing copyright statement back,
- The optional libraries' licenses are all compatible with the GPL

## Conclusion

* #51 Make `opus.c` GPL2
* #53 Double copyright statements
* #54 Uncopyrighted files
* #55 Copyrighted with no explicit licence
* #45 Upgrade lpc10
* #43 Replace libgsm's licence
