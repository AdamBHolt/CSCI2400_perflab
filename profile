Flat profile:

Each sample counts as 0.01 seconds.
  %   cumulative   self              self     total           
 time   seconds   seconds    calls  ms/call  ms/call  name    
 31.67      0.70     0.70                             memcpy
 11.76      0.96     0.26                             applyFilter(Filter*, cs1300bmp*, cs1300bmp*)
  8.14      1.14     0.18                             std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int)
  5.43      1.26     0.12                             std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int)
  4.98      1.37     0.11                             std::istream::read(char*, int)
  4.52      1.47     0.10                             std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int)
  4.30      1.57     0.10                             std::ostream::sentry::sentry(std::ostream&)
  4.07      1.66     0.09                             std::istream::sentry::sentry(std::istream&, bool)
  4.07      1.75     0.09                             std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int)
  3.85      1.83     0.09                             std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int)
  3.62      1.91     0.08        6    13.33    13.33  bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3]
  2.49      1.97     0.06                             __gmon_start__
  2.49      2.02     0.06                             __x86.get_pc_thunk.bx
  1.81      2.06     0.04        6     6.67     6.67  bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*)
  0.90      2.08     0.02                             std::codecvt<char, char, __mbstate_t>::do_encoding() const
  0.90      2.10     0.02                             std::codecvt<char, char, __mbstate_t>::do_always_noconv() const
  0.90      2.12     0.02                             std::basic_filebuf<char, std::char_traits<char> >::underflow()
  0.90      2.14     0.02                             __stpcpy_ia32
  0.90      2.16     0.02                             cs1300bmp_writefile
  0.68      2.18     0.02                             std::basic_ostream<char, std::char_traits<char> >::basic_ostream()
  0.45      2.19     0.01                             std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int)
  0.45      2.20     0.01                             std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setw)
  0.45      2.21     0.01                             cs1300bmp_readfile
  0.23      2.21     0.01                             std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::overflow(unsigned int)
  0.00      2.21     0.00      102     0.00     0.00  u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&)
  0.00      2.21     0.00       60     0.00     0.00  u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&)
  0.00      2.21     0.00       54     0.00     0.00  Filter::get(int, int)
  0.00      2.21     0.00       36     0.00     0.00  u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6]
  0.00      2.21     0.00       12     0.00     0.00  u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&)
  0.00      2.21     0.00        9     0.00     0.00  Filter::set(int, int, int)
  0.00      2.21     0.00        6     0.00     0.00  bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long)
  0.00      2.21     0.00        6     0.00     0.00  Filter::getDivisor()
  0.00      2.21     0.00        6     0.00     0.00  Filter::getSize()
  0.00      2.21     0.00        1     0.00     0.00  _GLOBAL__sub_I__Z16bmp_header1_readRSt14basic_ifstreamIcSt11char_traitsIcEEPtPmS4_S4_S5_
  0.00      2.21     0.00        1     0.00     0.00  _GLOBAL__sub_I_main
  0.00      2.21     0.00        1     0.00     0.00  Filter::setDivisor(int)
  0.00      2.21     0.00        1     0.00     0.00  Filter::Filter(int)
  0.00      2.21     0.00        1     0.00     0.00  main

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


granularity: each sample hit covers 2 byte(s) for 0.45% of 2.21 seconds

index % time    self  children    called     name
                                                 <spontaneous>
[1]     31.7    0.70    0.00                 memcpy [1]
-----------------------------------------------
                                                 <spontaneous>
[2]     11.8    0.26    0.00                 applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [2]
                0.00    0.00      54/54          Filter::get(int, int) [460]
                0.00    0.00       6/6           Filter::getSize() [466]
                0.00    0.00       6/6           Filter::getDivisor() [465]
-----------------------------------------------
                                                 <spontaneous>
[3]      8.1    0.18    0.00                 std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int) [3]
-----------------------------------------------
                                                 <spontaneous>
[4]      5.4    0.12    0.00                 std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int) [4]
-----------------------------------------------
                                                 <spontaneous>
[5]      5.0    0.11    0.00                 std::istream::read(char*, int) [5]
-----------------------------------------------
                                                 <spontaneous>
[6]      4.5    0.10    0.00                 std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int) [6]
-----------------------------------------------
                                                 <spontaneous>
[7]      4.3    0.10    0.00                 std::ostream::sentry::sentry(std::ostream&) [7]
-----------------------------------------------
                                                 <spontaneous>
[8]      4.1    0.01    0.08                 cs1300bmp_readfile [8]
                0.08    0.00       6/6           bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [12]
-----------------------------------------------
                                                 <spontaneous>
[9]      4.1    0.09    0.00                 std::istream::sentry::sentry(std::istream&, bool) [9]
-----------------------------------------------
                                                 <spontaneous>
[10]     4.1    0.09    0.00                 std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int) [10]
-----------------------------------------------
                                                 <spontaneous>
[11]     3.8    0.09    0.00                 std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int) [11]
-----------------------------------------------
                0.08    0.00       6/6           cs1300bmp_readfile [8]
[12]     3.6    0.08    0.00       6         bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [12]
                0.00    0.00      60/60          u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [459]
                0.00    0.00      42/102         u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [458]
-----------------------------------------------
                                                 <spontaneous>
[13]     2.7    0.02    0.04                 cs1300bmp_writefile [13]
                0.04    0.00       6/6           bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [16]
-----------------------------------------------
                                                 <spontaneous>
[14]     2.5    0.06    0.00                 __gmon_start__ [14]
-----------------------------------------------
                                                 <spontaneous>
[15]     2.5    0.06    0.00                 __x86.get_pc_thunk.bx [15]
-----------------------------------------------
                0.04    0.00       6/6           cs1300bmp_writefile [13]
[16]     1.8    0.04    0.00       6         bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [16]
                0.00    0.00      36/36          u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6] [461]
                0.00    0.00      12/12          u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [462]
                0.00    0.00       6/6           bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long) [464]
-----------------------------------------------
                                                 <spontaneous>
[17]     0.9    0.02    0.00                 std::codecvt<char, char, __mbstate_t>::do_encoding() const [17]
-----------------------------------------------
                                                 <spontaneous>
[18]     0.9    0.02    0.00                 std::codecvt<char, char, __mbstate_t>::do_always_noconv() const [18]
-----------------------------------------------
                                                 <spontaneous>
[19]     0.9    0.02    0.00                 std::basic_filebuf<char, std::char_traits<char> >::underflow() [19]
-----------------------------------------------
                                                 <spontaneous>
[20]     0.9    0.02    0.00                 __stpcpy_ia32 [20]
-----------------------------------------------
                                                 <spontaneous>
[21]     0.7    0.02    0.00                 std::basic_ostream<char, std::char_traits<char> >::basic_ostream() [21]
-----------------------------------------------
                                                 <spontaneous>
[22]     0.5    0.01    0.00                 std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int) [22]
-----------------------------------------------
                                                 <spontaneous>
[23]     0.5    0.01    0.00                 std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setw) [23]
-----------------------------------------------
                                                 <spontaneous>
[24]     0.2    0.01    0.00                 std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::overflow(unsigned int) [24]
-----------------------------------------------
                0.00    0.00       1/1           __libc_start_main [2867]
[25]     0.0    0.00    0.00       1         main [25]
-----------------------------------------------
                0.00    0.00      42/102         bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [12]
                0.00    0.00      60/102         u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [459]
[458]    0.0    0.00    0.00     102         u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [458]
-----------------------------------------------
                0.00    0.00      60/60          bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [12]
[459]    0.0    0.00    0.00      60         u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [459]
                0.00    0.00      60/102         u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [458]
-----------------------------------------------
                0.00    0.00      54/54          applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [2]
[460]    0.0    0.00    0.00      54         Filter::get(int, int) [460]
-----------------------------------------------
                0.00    0.00      36/36          bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [16]
[461]    0.0    0.00    0.00      36         u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6] [461]
-----------------------------------------------
                0.00    0.00      12/12          bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [16]
[462]    0.0    0.00    0.00      12         u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [462]
-----------------------------------------------
                0.00    0.00       9/9           readFilter(std::string) [834]
[463]    0.0    0.00    0.00       9         Filter::set(int, int, int) [463]
-----------------------------------------------
                0.00    0.00       6/6           bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [16]
[464]    0.0    0.00    0.00       6         bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long) [464]
-----------------------------------------------
                0.00    0.00       6/6           applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [2]
[465]    0.0    0.00    0.00       6         Filter::getDivisor() [465]
-----------------------------------------------
                0.00    0.00       6/6           applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [2]
[466]    0.0    0.00    0.00       6         Filter::getSize() [466]
-----------------------------------------------
                0.00    0.00       1/1           __libc_csu_init [2852]
[467]    0.0    0.00    0.00       1         _GLOBAL__sub_I__Z16bmp_header1_readRSt14basic_ifstreamIcSt11char_traitsIcEEPtPmS4_S4_S5_ [467]
-----------------------------------------------
                0.00    0.00       1/1           __libc_csu_init [2852]
[468]    0.0    0.00    0.00       1         _GLOBAL__sub_I_main [468]
-----------------------------------------------
                0.00    0.00       1/1           readFilter(std::string) [834]
[469]    0.0    0.00    0.00       1         Filter::setDivisor(int) [469]
-----------------------------------------------
                0.00    0.00       1/1           readFilter(std::string) [834]
[470]    0.0    0.00    0.00       1         Filter::Filter(int) [470]
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

 [467] _GLOBAL__sub_I__Z16bmp_header1_readRSt14basic_ifstreamIcSt11char_traitsIcEEPtPmS4_S4_S5_ [463] Filter::set(int, int, int) [4] std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int)
 [468] _GLOBAL__sub_I_main   [466] Filter::getSize()      [11] std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int)
   [2] applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [470] Filter::Filter(int) [24] std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::overflow(unsigned int)
 [464] bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long) [17] std::codecvt<char, char, __mbstate_t>::do_encoding() const [3] std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int)
  [16] bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [18] std::codecvt<char, char, __mbstate_t>::do_always_noconv() const [23] std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setw)
 [459] u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [5] std::istream::read(char*, int) [14] __gmon_start__
 [462] u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [9] std::istream::sentry::sentry(std::istream&, bool) [20] __stpcpy_ia32
 [461] u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6] [7] std::ostream::sentry::sentry(std::ostream&) [15] __x86.get_pc_thunk.bx
 [458] u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [21] std::basic_ostream<char, std::char_traits<char> >::basic_ostream() [8] cs1300bmp_readfile
  [12] bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [6] std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int) [13] cs1300bmp_writefile
 [465] Filter::getDivisor()   [10] std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int) [25] main
 [469] Filter::setDivisor(int) [19] std::basic_filebuf<char, std::char_traits<char> >::underflow() [1] memcpy
 [460] Filter::get(int, int)  [22] std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int)
