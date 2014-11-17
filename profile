Flat profile:

Each sample counts as 0.01 seconds.
  %   cumulative   self              self     total           
 time   seconds   seconds    calls  ms/call  ms/call  name    
 23.14      0.53     0.53                             memcpy
 11.79      0.80     0.27                             std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int)
 11.79      1.07     0.27                             applyFilter(Filter*, cs1300bmp*, cs1300bmp*)
  6.99      1.23     0.16                             std::istream::sentry::sentry(std::istream&, bool)
  6.11      1.37     0.14        6    23.33    23.33  bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3]
  5.24      1.49     0.12                             std::ostream::sentry::sentry(std::ostream&)
  5.24      1.61     0.12                             std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int)
  5.02      1.73     0.12                             std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int)
  5.02      1.84     0.12                             std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int)
  4.59      1.95     0.11                             std::istream::read(char*, int)
  4.37      2.05     0.10                             std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int)
  1.31      2.08     0.03                             std::codecvt<char, char, __mbstate_t>::do_encoding() const
  1.31      2.11     0.03                             std::codecvt<char, char, __mbstate_t>::do_always_noconv() const
  1.31      2.14     0.03                             __gmon_start__
  1.31      2.17     0.03                             __x86.get_pc_thunk.bx
  0.87      2.19     0.02                             cs1300bmp_readfile
  0.87      2.21     0.02                             cs1300bmp_writefile
  0.66      2.22     0.02                             std::basic_filebuf<char, std::char_traits<char> >::underflow()
  0.44      2.23     0.01        6     1.67     1.67  bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*)
  0.44      2.24     0.01                             std::basic_istream<char, std::char_traits<char> >::basic_istream()
  0.44      2.25     0.01                             std::basic_ostream<char, std::char_traits<char> >::basic_ostream()
  0.44      2.26     0.01                             std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int)
  0.44      2.27     0.01                             __stpcpy_ia32
  0.44      2.28     0.01                             writev
  0.22      2.29     0.01                             std::istream::peek()
  0.22      2.29     0.01                             std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::overflow(unsigned int)
  0.00      2.29     0.00      102     0.00     0.00  u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&)
  0.00      2.29     0.00       60     0.00     0.00  u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&)
  0.00      2.29     0.00       54     0.00     0.00  Filter::get(int, int)
  0.00      2.29     0.00       36     0.00     0.00  u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6]
  0.00      2.29     0.00       12     0.00     0.00  u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&)
  0.00      2.29     0.00        9     0.00     0.00  Filter::set(int, int, int)
  0.00      2.29     0.00        6     0.00     0.00  bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long)
  0.00      2.29     0.00        6     0.00     0.00  Filter::getDivisor()
  0.00      2.29     0.00        6     0.00     0.00  Filter::getSize()
  0.00      2.29     0.00        1     0.00     0.00  _GLOBAL__sub_I__Z16bmp_header1_readRSt14basic_ifstreamIcSt11char_traitsIcEEPtPmS4_S4_S5_
  0.00      2.29     0.00        1     0.00     0.00  _GLOBAL__sub_I_main
  0.00      2.29     0.00        1     0.00     0.00  Filter::setDivisor(int)
  0.00      2.29     0.00        1     0.00     0.00  Filter::Filter(int)
  0.00      2.29     0.00        1     0.00     0.00  main

 %         the percentage of the total running time of the
time       program used by this function.

cumulative a running sum of the number of seconds accounted
 seconds   for by this function and those listed above it.

 self      the number of seconds accounted for by this
seconds    function alone.  This is the major sort for this
           listing.

calls      the number of times this function was invoked, if
           this function is profiled, else blank.
 
 self      the average number of milliseconds spent in this
ms/call    function per call, if this function is profiled,
	   else blank.

 total     the average number of milliseconds spent in this
ms/call    function and its descendents per call, if this 
	   function is profiled, else blank.

name       the name of the function.  This is the minor sort
           for this listing. The index shows the location of
	   the function in the gprof listing. If the index is
	   in parenthesis it shows where it would appear in
	   the gprof listing if it were to be printed.

Copyright (C) 2012 Free Software Foundation, Inc.

Copying and distribution of this file, with or without modification,
are permitted in any medium without royalty provided the copyright
notice and this notice are preserved.

		     Call graph (explanation follows)


granularity: each sample hit covers 2 byte(s) for 0.44% of 2.29 seconds

index % time    self  children    called     name
                                                 <spontaneous>
[1]     23.1    0.53    0.00                 memcpy [1]
-----------------------------------------------
                                                 <spontaneous>
[2]     11.8    0.27    0.00                 std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int) [2]
-----------------------------------------------
                                                 <spontaneous>
[3]     11.8    0.27    0.00                 applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [3]
                0.00    0.00      54/54          Filter::get(int, int) [461]
                0.00    0.00       6/6           Filter::getSize() [467]
                0.00    0.00       6/6           Filter::getDivisor() [466]
-----------------------------------------------
                                                 <spontaneous>
[4]      7.0    0.16    0.00                 std::istream::sentry::sentry(std::istream&, bool) [4]
-----------------------------------------------
                                                 <spontaneous>
[5]      7.0    0.02    0.14                 cs1300bmp_readfile [5]
                0.14    0.00       6/6           bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [6]
-----------------------------------------------
                0.14    0.00       6/6           cs1300bmp_readfile [5]
[6]      6.1    0.14    0.00       6         bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [6]
                0.00    0.00      60/60          u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [460]
                0.00    0.00      42/102         u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [459]
-----------------------------------------------
                                                 <spontaneous>
[7]      5.2    0.12    0.00                 std::ostream::sentry::sentry(std::ostream&) [7]
-----------------------------------------------
                                                 <spontaneous>
[8]      5.2    0.12    0.00                 std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int) [8]
-----------------------------------------------
                                                 <spontaneous>
[9]      5.0    0.12    0.00                 std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int) [9]
-----------------------------------------------
                                                 <spontaneous>
[10]     5.0    0.12    0.00                 std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int) [10]
-----------------------------------------------
                                                 <spontaneous>
[11]     4.6    0.11    0.00                 std::istream::read(char*, int) [11]
-----------------------------------------------
                                                 <spontaneous>
[12]     4.4    0.10    0.00                 std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int) [12]
-----------------------------------------------
                                                 <spontaneous>
[13]     1.3    0.02    0.01                 cs1300bmp_writefile [13]
                0.01    0.00       6/6           bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [20]
-----------------------------------------------
                                                 <spontaneous>
[14]     1.3    0.03    0.00                 std::codecvt<char, char, __mbstate_t>::do_encoding() const [14]
-----------------------------------------------
                                                 <spontaneous>
[15]     1.3    0.03    0.00                 std::codecvt<char, char, __mbstate_t>::do_always_noconv() const [15]
-----------------------------------------------
                                                 <spontaneous>
[16]     1.3    0.03    0.00                 __gmon_start__ [16]
-----------------------------------------------
                                                 <spontaneous>
[17]     1.3    0.03    0.00                 __x86.get_pc_thunk.bx [17]
-----------------------------------------------
                                                 <spontaneous>
[18]     0.7    0.02    0.00                 std::basic_filebuf<char, std::char_traits<char> >::underflow() [18]
-----------------------------------------------
                                                 <spontaneous>
[19]     0.4    0.01    0.00                 writev [19]
-----------------------------------------------
                0.01    0.00       6/6           cs1300bmp_writefile [13]
[20]     0.4    0.01    0.00       6         bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [20]
                0.00    0.00      36/36          u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6] [462]
                0.00    0.00      12/12          u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [463]
                0.00    0.00       6/6           bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long) [465]
-----------------------------------------------
                                                 <spontaneous>
[21]     0.4    0.01    0.00                 std::basic_istream<char, std::char_traits<char> >::basic_istream() [21]
-----------------------------------------------
                                                 <spontaneous>
[22]     0.4    0.01    0.00                 std::basic_ostream<char, std::char_traits<char> >::basic_ostream() [22]
-----------------------------------------------
                                                 <spontaneous>
[23]     0.4    0.01    0.00                 std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int) [23]
-----------------------------------------------
                                                 <spontaneous>
[24]     0.4    0.01    0.00                 __stpcpy_ia32 [24]
-----------------------------------------------
                                                 <spontaneous>
[25]     0.2    0.01    0.00                 std::istream::peek() [25]
-----------------------------------------------
                                                 <spontaneous>
[26]     0.2    0.01    0.00                 std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::overflow(unsigned int) [26]
-----------------------------------------------
                0.00    0.00       1/1           __libc_start_main [2867]
[27]     0.0    0.00    0.00       1         main [27]
-----------------------------------------------
                0.00    0.00      42/102         bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [6]
                0.00    0.00      60/102         u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [460]
[459]    0.0    0.00    0.00     102         u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [459]
-----------------------------------------------
                0.00    0.00      60/60          bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [6]
[460]    0.0    0.00    0.00      60         u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [460]
                0.00    0.00      60/102         u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [459]
-----------------------------------------------
                0.00    0.00      54/54          applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [3]
[461]    0.0    0.00    0.00      54         Filter::get(int, int) [461]
-----------------------------------------------
                0.00    0.00      36/36          bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [20]
[462]    0.0    0.00    0.00      36         u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6] [462]
-----------------------------------------------
                0.00    0.00      12/12          bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [20]
[463]    0.0    0.00    0.00      12         u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [463]
-----------------------------------------------
                0.00    0.00       9/9           readFilter(std::string) [835]
[464]    0.0    0.00    0.00       9         Filter::set(int, int, int) [464]
-----------------------------------------------
                0.00    0.00       6/6           bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [20]
[465]    0.0    0.00    0.00       6         bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long) [465]
-----------------------------------------------
                0.00    0.00       6/6           applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [3]
[466]    0.0    0.00    0.00       6         Filter::getDivisor() [466]
-----------------------------------------------
                0.00    0.00       6/6           applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [3]
[467]    0.0    0.00    0.00       6         Filter::getSize() [467]
-----------------------------------------------
                0.00    0.00       1/1           __libc_csu_init [2852]
[468]    0.0    0.00    0.00       1         _GLOBAL__sub_I__Z16bmp_header1_readRSt14basic_ifstreamIcSt11char_traitsIcEEPtPmS4_S4_S5_ [468]
-----------------------------------------------
                0.00    0.00       1/1           __libc_csu_init [2852]
[469]    0.0    0.00    0.00       1         _GLOBAL__sub_I_main [469]
-----------------------------------------------
                0.00    0.00       1/1           readFilter(std::string) [835]
[470]    0.0    0.00    0.00       1         Filter::setDivisor(int) [470]
-----------------------------------------------
                0.00    0.00       1/1           readFilter(std::string) [835]
[471]    0.0    0.00    0.00       1         Filter::Filter(int) [471]
-----------------------------------------------

 This table describes the call tree of the program, and was sorted by
 the total amount of time spent in each function and its children.

 Each entry in this table consists of several lines.  The line with the
 index number at the left hand margin lists the current function.
 The lines above it list the functions that called this function,
 and the lines below it list the functions this one called.
 This line lists:
     index	A unique number given to each element of the table.
		Index numbers are sorted numerically.
		The index number is printed next to every function name so
		it is easier to look up where the function is in the table.

     % time	This is the percentage of the `total' time that was spent
		in this function and its children.  Note that due to
		different viewpoints, functions excluded by options, etc,
		these numbers will NOT add up to 100%.

     self	This is the total amount of time spent in this function.

     children	This is the total amount of time propagated into this
		function by its children.

     called	This is the number of times the function was called.
		If the function called itself recursively, the number
		only includes non-recursive calls, and is followed by
		a `+' and the number of recursive calls.

     name	The name of the current function.  The index number is
		printed after it.  If the function is a member of a
		cycle, the cycle number is printed between the
		function's name and the index number.


 For the function's parents, the fields have the following meanings:

     self	This is the amount of time that was propagated directly
		from the function into this parent.

     children	This is the amount of time that was propagated from
		the function's children into this parent.

     called	This is the number of times this parent called the
		function `/' the total number of times the function
		was called.  Recursive calls to the function are not
		included in the number after the `/'.

     name	This is the name of the parent.  The parent's index
		number is printed after it.  If the parent is a
		member of a cycle, the cycle number is printed between
		the name and the index number.

 If the parents of the function cannot be determined, the word
 `<spontaneous>' is printed in the `name' field, and all the other
 fields are blank.

 For the function's children, the fields have the following meanings:

     self	This is the amount of time that was propagated directly
		from the child into the function.

     children	This is the amount of time that was propagated from the
		child's children to the function.

     called	This is the number of times the function called
		this child `/' the total number of times the child
		was called.  Recursive calls by the child are not
		listed in the number after the `/'.

     name	This is the name of the child.  The child's index
		number is printed after it.  If the child is a
		member of a cycle, the cycle number is printed
		between the name and the index number.

 If there are any cycles (circles) in the call graph, there is an
 entry for the cycle-as-a-whole.  This entry shows who called the
 cycle (as parents) and the members of the cycle (as children.)
 The `+' recursive calls entry shows the number of function calls that
 were internal to the cycle, and the calls entry for each member shows,
 for that member, how many times it was called from other members of
 the cycle.

Copyright (C) 2012 Free Software Foundation, Inc.

Copying and distribution of this file, with or without modification,
are permitted in any medium without royalty provided the copyright
notice and this notice are preserved.

Index by function name

 [468] _GLOBAL__sub_I__Z16bmp_header1_readRSt14basic_ifstreamIcSt11char_traitsIcEEPtPmS4_S4_S5_ [467] Filter::getSize() [9] std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int)
 [469] _GLOBAL__sub_I_main   [471] Filter::Filter(int)    [12] std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int)
   [3] applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [14] std::codecvt<char, char, __mbstate_t>::do_encoding() const [26] std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::overflow(unsigned int)
 [465] bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long) [15] std::codecvt<char, char, __mbstate_t>::do_always_noconv() const [2] std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int)
  [20] bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [25] std::istream::peek() [16] __gmon_start__
 [460] u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [11] std::istream::read(char*, int) [24] __stpcpy_ia32
 [463] u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [4] std::istream::sentry::sentry(std::istream&, bool) [17] __x86.get_pc_thunk.bx
 [462] u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6] [21] std::basic_istream<char, std::char_traits<char> >::basic_istream() [5] cs1300bmp_readfile
 [459] u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [7] std::ostream::sentry::sentry(std::ostream&) [13] cs1300bmp_writefile
   [6] bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [22] std::basic_ostream<char, std::char_traits<char> >::basic_ostream() [27] main
 [466] Filter::getDivisor()   [10] std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int) [1] memcpy
 [470] Filter::setDivisor(int) [8] std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int) [19] writev
 [461] Filter::get(int, int)  [18] std::basic_filebuf<char, std::char_traits<char> >::underflow()
 [464] Filter::set(int, int, int) [23] std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int)
