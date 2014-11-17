Flat profile:

Each sample counts as 0.01 seconds.
  %   cumulative   self              self     total           
 time   seconds   seconds    calls  ms/call  ms/call  name    
 27.52      0.60     0.60                             memcpy
 14.68      0.92     0.32                             applyFilter(Filter*, cs1300bmp*, cs1300bmp*)
 11.24      1.17     0.25                             std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int)
  5.73      1.29     0.13                             std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int)
  5.28      1.41     0.12                             std::istream::read(char*, int)
  4.59      1.51     0.10        6    16.67    16.67  bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3]
  4.13      1.60     0.09                             std::istream::sentry::sentry(std::istream&, bool)
  4.13      1.69     0.09                             std::ostream::sentry::sentry(std::ostream&)
  4.13      1.78     0.09                             std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int)
  3.67      1.86     0.08                             std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int)
  2.98      1.92     0.07                             std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int)
  2.29      1.97     0.05                             __gmon_start__
  2.29      2.02     0.05                             __x86.get_pc_thunk.bx
  1.15      2.05     0.03                             std::codecvt<char, char, __mbstate_t>::do_encoding() const
  1.15      2.07     0.03                             std::codecvt<char, char, __mbstate_t>::do_always_noconv() const
  0.92      2.09     0.02                             std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int)
  0.92      2.11     0.02                             cs1300bmp_writefile
  0.69      2.13     0.02                             std::istream::peek()
  0.46      2.14     0.01        6     1.67     1.67  bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*)
  0.46      2.15     0.01                             std::basic_ostream<char, std::char_traits<char> >::basic_ostream()
  0.46      2.16     0.01                             __stpcpy_ia32
  0.46      2.17     0.01                             cs1300bmp_readfile
  0.23      2.17     0.01                             std::basic_filebuf<char, std::char_traits<char> >::underflow()
  0.23      2.18     0.01                             std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::overflow(unsigned int)
  0.23      2.18     0.01                             std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setw)
  0.00      2.18     0.00      102     0.00     0.00  u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&)
  0.00      2.18     0.00       60     0.00     0.00  u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&)
  0.00      2.18     0.00       54     0.00     0.00  Filter::get(int, int)
  0.00      2.18     0.00       36     0.00     0.00  u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6]
  0.00      2.18     0.00       12     0.00     0.00  u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&)
  0.00      2.18     0.00        9     0.00     0.00  Filter::set(int, int, int)
  0.00      2.18     0.00        6     0.00     0.00  bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long)
  0.00      2.18     0.00        6     0.00     0.00  Filter::getDivisor()
  0.00      2.18     0.00        6     0.00     0.00  Filter::getSize()
  0.00      2.18     0.00        1     0.00     0.00  _GLOBAL__sub_I__Z16bmp_header1_readRSt14basic_ifstreamIcSt11char_traitsIcEEPtPmS4_S4_S5_
  0.00      2.18     0.00        1     0.00     0.00  _GLOBAL__sub_I_main
  0.00      2.18     0.00        1     0.00     0.00  Filter::setDivisor(int)
  0.00      2.18     0.00        1     0.00     0.00  Filter::Filter(int)
  0.00      2.18     0.00        1     0.00     0.00  main

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


granularity: each sample hit covers 2 byte(s) for 0.46% of 2.18 seconds

index % time    self  children    called     name
                                                 <spontaneous>
[1]     27.5    0.60    0.00                 memcpy [1]
-----------------------------------------------
                                                 <spontaneous>
[2]     14.7    0.32    0.00                 applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [2]
                0.00    0.00      54/54          Filter::get(int, int) [461]
                0.00    0.00       6/6           Filter::getSize() [467]
                0.00    0.00       6/6           Filter::getDivisor() [466]
-----------------------------------------------
                                                 <spontaneous>
[3]     11.2    0.25    0.00                 std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int) [3]
-----------------------------------------------
                                                 <spontaneous>
[4]      5.7    0.13    0.00                 std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int) [4]
-----------------------------------------------
                                                 <spontaneous>
[5]      5.3    0.12    0.00                 std::istream::read(char*, int) [5]
-----------------------------------------------
                                                 <spontaneous>
[6]      5.0    0.01    0.10                 cs1300bmp_readfile [6]
                0.10    0.00       6/6           bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [7]
-----------------------------------------------
                0.10    0.00       6/6           cs1300bmp_readfile [6]
[7]      4.6    0.10    0.00       6         bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [7]
                0.00    0.00      60/60          u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [460]
                0.00    0.00      42/102         u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [459]
-----------------------------------------------
                                                 <spontaneous>
[8]      4.1    0.09    0.00                 std::istream::sentry::sentry(std::istream&, bool) [8]
-----------------------------------------------
                                                 <spontaneous>
[9]      4.1    0.09    0.00                 std::ostream::sentry::sentry(std::ostream&) [9]
-----------------------------------------------
                                                 <spontaneous>
[10]     4.1    0.09    0.00                 std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int) [10]
-----------------------------------------------
                                                 <spontaneous>
[11]     3.7    0.08    0.00                 std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int) [11]
-----------------------------------------------
                                                 <spontaneous>
[12]     3.0    0.07    0.00                 std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int) [12]
-----------------------------------------------
                                                 <spontaneous>
[13]     2.3    0.05    0.00                 __gmon_start__ [13]
-----------------------------------------------
                                                 <spontaneous>
[14]     2.3    0.05    0.00                 __x86.get_pc_thunk.bx [14]
-----------------------------------------------
                                                 <spontaneous>
[15]     1.4    0.02    0.01                 cs1300bmp_writefile [15]
                0.01    0.00       6/6           bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [20]
-----------------------------------------------
                                                 <spontaneous>
[16]     1.1    0.03    0.00                 std::codecvt<char, char, __mbstate_t>::do_encoding() const [16]
-----------------------------------------------
                                                 <spontaneous>
[17]     1.1    0.03    0.00                 std::codecvt<char, char, __mbstate_t>::do_always_noconv() const [17]
-----------------------------------------------
                                                 <spontaneous>
[18]     0.9    0.02    0.00                 std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int) [18]
-----------------------------------------------
                                                 <spontaneous>
[19]     0.7    0.02    0.00                 std::istream::peek() [19]
-----------------------------------------------
                0.01    0.00       6/6           cs1300bmp_writefile [15]
[20]     0.5    0.01    0.00       6         bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [20]
                0.00    0.00      36/36          u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6] [462]
                0.00    0.00      12/12          u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [463]
                0.00    0.00       6/6           bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long) [465]
-----------------------------------------------
                                                 <spontaneous>
[21]     0.5    0.01    0.00                 std::basic_ostream<char, std::char_traits<char> >::basic_ostream() [21]
-----------------------------------------------
                                                 <spontaneous>
[22]     0.5    0.01    0.00                 __stpcpy_ia32 [22]
-----------------------------------------------
                                                 <spontaneous>
[23]     0.2    0.01    0.00                 std::basic_filebuf<char, std::char_traits<char> >::underflow() [23]
-----------------------------------------------
                                                 <spontaneous>
[24]     0.2    0.01    0.00                 std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::overflow(unsigned int) [24]
-----------------------------------------------
                                                 <spontaneous>
[25]     0.2    0.01    0.00                 std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setw) [25]
-----------------------------------------------
                0.00    0.00       1/1           __libc_start_main [2867]
[26]     0.0    0.00    0.00       1         main [26]
-----------------------------------------------
                0.00    0.00      42/102         bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [7]
                0.00    0.00      60/102         u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [460]
[459]    0.0    0.00    0.00     102         u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [459]
-----------------------------------------------
                0.00    0.00      60/60          bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [7]
[460]    0.0    0.00    0.00      60         u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [460]
                0.00    0.00      60/102         u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [459]
-----------------------------------------------
                0.00    0.00      54/54          applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [2]
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
                0.00    0.00       6/6           applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [2]
[466]    0.0    0.00    0.00       6         Filter::getDivisor() [466]
-----------------------------------------------
                0.00    0.00       6/6           applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [2]
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

 [468] _GLOBAL__sub_I__Z16bmp_header1_readRSt14basic_ifstreamIcSt11char_traitsIcEEPtPmS4_S4_S5_ [464] Filter::set(int, int, int) [18] std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int)
 [469] _GLOBAL__sub_I_main   [467] Filter::getSize()      [10] std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int)
   [2] applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [471] Filter::Filter(int) [4] std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int)
 [465] bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long) [16] std::codecvt<char, char, __mbstate_t>::do_encoding() const [24] std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::overflow(unsigned int)
  [20] bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [17] std::codecvt<char, char, __mbstate_t>::do_always_noconv() const [3] std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int)
 [460] u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [19] std::istream::peek() [25] std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setw)
 [463] u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [5] std::istream::read(char*, int) [13] __gmon_start__
 [462] u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6] [8] std::istream::sentry::sentry(std::istream&, bool) [22] __stpcpy_ia32
 [459] u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [9] std::ostream::sentry::sentry(std::ostream&) [14] __x86.get_pc_thunk.bx
   [7] bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [21] std::basic_ostream<char, std::char_traits<char> >::basic_ostream() [6] cs1300bmp_readfile
 [466] Filter::getDivisor()   [12] std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int) [15] cs1300bmp_writefile
 [470] Filter::setDivisor(int) [11] std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int) [26] main
 [461] Filter::get(int, int)  [23] std::basic_filebuf<char, std::char_traits<char> >::underflow() [1] memcpy
Flat profile:

Each sample counts as 0.01 seconds.
  %   cumulative   self              self     total           
 time   seconds   seconds    calls  ms/call  ms/call  name    
 27.43      0.65     0.65                             memcpy
 15.40      1.02     0.37                             std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int)
 10.97      1.28     0.26                             applyFilter(Filter*, cs1300bmp*, cs1300bmp*)
  6.54      1.43     0.16                             std::istream::read(char*, int)
  6.33      1.58     0.15        6    25.00    25.00  bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3]
  5.70      1.72     0.14                             std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int)
  4.43      1.82     0.11                             std::istream::sentry::sentry(std::istream&, bool)
  4.22      1.92     0.10                             std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int)
  3.38      2.00     0.08                             std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int)
  2.32      2.06     0.06                             std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int)
  2.11      2.11     0.05                             std::ostream::sentry::sentry(std::ostream&)
  1.69      2.15     0.04                             __gmon_start__
  1.69      2.19     0.04                             __x86.get_pc_thunk.bx
  1.27      2.22     0.03                             std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int)
  1.27      2.25     0.03                             cs1300bmp_writefile
  0.84      2.27     0.02        6     3.33     3.33  bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*)
  0.84      2.29     0.02                             std::basic_filebuf<char, std::char_traits<char> >::underflow()
  0.84      2.31     0.02                             __stpcpy_ia32
  0.63      2.32     0.02                             std::codecvt<char, char, __mbstate_t>::do_encoding() const
  0.63      2.34     0.02                             std::codecvt<char, char, __mbstate_t>::do_always_noconv() const
  0.63      2.35     0.02                             std::istream::peek()
  0.42      2.36     0.01                             std::basic_ostream<char, std::char_traits<char> >::basic_ostream()
  0.21      2.37     0.01                             std::basic_istream<char, std::char_traits<char> >::basic_istream()
  0.21      2.37     0.01                             std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setw)
  0.00      2.37     0.00      102     0.00     0.00  u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&)
  0.00      2.37     0.00       60     0.00     0.00  u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&)
  0.00      2.37     0.00       54     0.00     0.00  Filter::get(int, int)
  0.00      2.37     0.00       36     0.00     0.00  u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6]
  0.00      2.37     0.00       12     0.00     0.00  u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&)
  0.00      2.37     0.00        9     0.00     0.00  Filter::set(int, int, int)
  0.00      2.37     0.00        6     0.00     0.00  bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long)
  0.00      2.37     0.00        6     0.00     0.00  Filter::getDivisor()
  0.00      2.37     0.00        6     0.00     0.00  Filter::getSize()
  0.00      2.37     0.00        1     0.00     0.00  _GLOBAL__sub_I__Z16bmp_header1_readRSt14basic_ifstreamIcSt11char_traitsIcEEPtPmS4_S4_S5_
  0.00      2.37     0.00        1     0.00     0.00  _GLOBAL__sub_I_main
  0.00      2.37     0.00        1     0.00     0.00  Filter::setDivisor(int)
  0.00      2.37     0.00        1     0.00     0.00  Filter::Filter(int)
  0.00      2.37     0.00        1     0.00     0.00  main

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


granularity: each sample hit covers 2 byte(s) for 0.42% of 2.37 seconds

index % time    self  children    called     name
                                                 <spontaneous>
[1]     27.4    0.65    0.00                 memcpy [1]
-----------------------------------------------
                                                 <spontaneous>
[2]     15.4    0.37    0.00                 std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int) [2]
-----------------------------------------------
                                                 <spontaneous>
[3]     11.0    0.26    0.00                 applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [3]
                0.00    0.00      54/54          Filter::get(int, int) [461]
                0.00    0.00       6/6           Filter::getSize() [467]
                0.00    0.00       6/6           Filter::getDivisor() [466]
-----------------------------------------------
                                                 <spontaneous>
[4]      6.5    0.16    0.00                 std::istream::read(char*, int) [4]
-----------------------------------------------
                                                 <spontaneous>
[5]      6.3    0.00    0.15                 cs1300bmp_readfile [5]
                0.15    0.00       6/6           bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [6]
-----------------------------------------------
                0.15    0.00       6/6           cs1300bmp_readfile [5]
[6]      6.3    0.15    0.00       6         bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [6]
                0.00    0.00      60/60          u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [460]
                0.00    0.00      42/102         u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [459]
-----------------------------------------------
                                                 <spontaneous>
[7]      5.7    0.14    0.00                 std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int) [7]
-----------------------------------------------
                                                 <spontaneous>
[8]      4.4    0.11    0.00                 std::istream::sentry::sentry(std::istream&, bool) [8]
-----------------------------------------------
                                                 <spontaneous>
[9]      4.2    0.10    0.00                 std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int) [9]
-----------------------------------------------
                                                 <spontaneous>
[10]     3.4    0.08    0.00                 std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int) [10]
-----------------------------------------------
                                                 <spontaneous>
[11]     2.3    0.06    0.00                 std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int) [11]
-----------------------------------------------
                                                 <spontaneous>
[12]     2.1    0.03    0.02                 cs1300bmp_writefile [12]
                0.02    0.00       6/6           bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [17]
-----------------------------------------------
                                                 <spontaneous>
[13]     2.1    0.05    0.00                 std::ostream::sentry::sentry(std::ostream&) [13]
-----------------------------------------------
                                                 <spontaneous>
[14]     1.7    0.04    0.00                 __gmon_start__ [14]
-----------------------------------------------
                                                 <spontaneous>
[15]     1.7    0.04    0.00                 __x86.get_pc_thunk.bx [15]
-----------------------------------------------
                                                 <spontaneous>
[16]     1.3    0.03    0.00                 std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int) [16]
-----------------------------------------------
                0.02    0.00       6/6           cs1300bmp_writefile [12]
[17]     0.8    0.02    0.00       6         bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [17]
                0.00    0.00      36/36          u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6] [462]
                0.00    0.00      12/12          u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [463]
                0.00    0.00       6/6           bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long) [465]
-----------------------------------------------
                                                 <spontaneous>
[18]     0.8    0.02    0.00                 std::basic_filebuf<char, std::char_traits<char> >::underflow() [18]
-----------------------------------------------
                                                 <spontaneous>
[19]     0.8    0.02    0.00                 __stpcpy_ia32 [19]
-----------------------------------------------
                                                 <spontaneous>
[20]     0.6    0.02    0.00                 std::codecvt<char, char, __mbstate_t>::do_encoding() const [20]
-----------------------------------------------
                                                 <spontaneous>
[21]     0.6    0.02    0.00                 std::codecvt<char, char, __mbstate_t>::do_always_noconv() const [21]
-----------------------------------------------
                                                 <spontaneous>
[22]     0.6    0.02    0.00                 std::istream::peek() [22]
-----------------------------------------------
                                                 <spontaneous>
[23]     0.4    0.01    0.00                 std::basic_ostream<char, std::char_traits<char> >::basic_ostream() [23]
-----------------------------------------------
                                                 <spontaneous>
[24]     0.2    0.01    0.00                 std::basic_istream<char, std::char_traits<char> >::basic_istream() [24]
-----------------------------------------------
                                                 <spontaneous>
[25]     0.2    0.01    0.00                 std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setw) [25]
-----------------------------------------------
                0.00    0.00       1/1           __libc_start_main [2867]
[26]     0.0    0.00    0.00       1         main [26]
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
                0.00    0.00      36/36          bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [17]
[462]    0.0    0.00    0.00      36         u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6] [462]
-----------------------------------------------
                0.00    0.00      12/12          bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [17]
[463]    0.0    0.00    0.00      12         u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [463]
-----------------------------------------------
                0.00    0.00       9/9           readFilter(std::string) [835]
[464]    0.0    0.00    0.00       9         Filter::set(int, int, int) [464]
-----------------------------------------------
                0.00    0.00       6/6           bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [17]
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

 [468] _GLOBAL__sub_I__Z16bmp_header1_readRSt14basic_ifstreamIcSt11char_traitsIcEEPtPmS4_S4_S5_ [464] Filter::set(int, int, int) [18] std::basic_filebuf<char, std::char_traits<char> >::underflow()
 [469] _GLOBAL__sub_I_main   [467] Filter::getSize()      [16] std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int)
   [3] applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [471] Filter::Filter(int) [7] std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int)
 [465] bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long) [20] std::codecvt<char, char, __mbstate_t>::do_encoding() const [11] std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int)
  [17] bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [21] std::codecvt<char, char, __mbstate_t>::do_always_noconv() const [2] std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int)
 [460] u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [22] std::istream::peek() [25] std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setw)
 [463] u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [4] std::istream::read(char*, int) [14] __gmon_start__
 [462] u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6] [8] std::istream::sentry::sentry(std::istream&, bool) [19] __stpcpy_ia32
 [459] u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [24] std::basic_istream<char, std::char_traits<char> >::basic_istream() [15] __x86.get_pc_thunk.bx
   [6] bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [13] std::ostream::sentry::sentry(std::ostream&) [12] cs1300bmp_writefile
 [466] Filter::getDivisor()   [23] std::basic_ostream<char, std::char_traits<char> >::basic_ostream() [26] main
 [470] Filter::setDivisor(int) [9] std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int) [1] memcpy
 [461] Filter::get(int, int)  [10] std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int)
Flat profile:

Each sample counts as 0.01 seconds.
  %   cumulative   self              self     total           
 time   seconds   seconds    calls  ms/call  ms/call  name    
 18.75      0.48     0.48                             applyFilter(Filter*, cs1300bmp*, cs1300bmp*)
 17.19      0.92     0.44                             std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int)
  8.79      1.15     0.23                             std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int)
  8.01      1.35     0.21                             std::istream::read(char*, int)
  6.25      1.51     0.16                             memcpy
  5.47      1.65     0.14                             std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int)
  5.08      1.78     0.13                             std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int)
  4.30      1.89     0.11        6    18.33    18.33  bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.8]
  4.10      2.00     0.11                             std::ostream::sentry::sentry(std::ostream&)
  3.52      2.09     0.09                             __gmon_start__
  3.52      2.18     0.09                             __x86.get_pc_thunk.bx
  3.32      2.26     0.09                             std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int)
  2.73      2.33     0.07                             std::istream::sentry::sentry(std::istream&, bool)
  2.34      2.39     0.06                             cs1300bmp_readfile
  1.56      2.43     0.04                             cs1300bmp_writefile
  1.17      2.46     0.03                             __stpcpy_ia32
  0.98      2.49     0.03                             std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::xsgetn(wchar_t*, int)
  0.98      2.51     0.03                             std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int)
  0.78      2.53     0.02        6     3.33     3.33  bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*)
  0.39      2.54     0.01                             std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::xsputn(wchar_t const*, int)
  0.39      2.55     0.01                             std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setw)
  0.20      2.56     0.01                             std::istream::peek()
  0.20      2.56     0.01                             std::basic_ostream<char, std::char_traits<char> >::basic_ostream()
  0.00      2.56     0.00      102     0.00     0.00  u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&)
  0.00      2.56     0.00       60     0.00     0.00  u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&)
  0.00      2.56     0.00       54     0.00     0.00  Filter::get(int, int)
  0.00      2.56     0.00       36     0.00     0.00  u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.11]
  0.00      2.56     0.00       12     0.00     0.00  u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&)
  0.00      2.56     0.00        9     0.00     0.00  Filter::set(int, int, int)
  0.00      2.56     0.00        6     0.00     0.00  bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long)
  0.00      2.56     0.00        6     0.00     0.00  Filter::getDivisor()
  0.00      2.56     0.00        6     0.00     0.00  Filter::getSize()
  0.00      2.56     0.00        1     0.00     0.00  _GLOBAL__sub_I__Z16bmp_header1_readRSt14basic_ifstreamIcSt11char_traitsIcEEPtPmS4_S4_S5_
  0.00      2.56     0.00        1     0.00     0.00  _GLOBAL__sub_I_main
  0.00      2.56     0.00        1     0.00     0.00  Filter::setDivisor(int)
  0.00      2.56     0.00        1     0.00     0.00  Filter::Filter(int)
  0.00      2.56     0.00        1     0.00     0.00  main

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

Copyright (C) 2012-2014 Free Software Foundation, Inc.

Copying and distribution of this file, with or without modification,
are permitted in any medium without royalty provided the copyright
notice and this notice are preserved.

		     Call graph (explanation follows)


granularity: each sample hit covers 2 byte(s) for 0.39% of 2.56 seconds

index % time    self  children    called     name
                                                 <spontaneous>
[1]     18.7    0.48    0.00                 applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [1]
                0.00    0.00      54/54          Filter::get(int, int) [462]
                0.00    0.00       6/6           Filter::getSize() [468]
                0.00    0.00       6/6           Filter::getDivisor() [467]
-----------------------------------------------
                                                 <spontaneous>
[2]     17.2    0.44    0.00                 std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int) [2]
-----------------------------------------------
                                                 <spontaneous>
[3]      8.8    0.23    0.00                 std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int) [3]
-----------------------------------------------
                                                 <spontaneous>
[4]      8.0    0.21    0.00                 std::istream::read(char*, int) [4]
-----------------------------------------------
                                                 <spontaneous>
[5]      6.6    0.06    0.11                 cs1300bmp_readfile [5]
                0.11    0.00       6/6           bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.8] [9]
-----------------------------------------------
                                                 <spontaneous>
[6]      6.2    0.16    0.00                 memcpy [6]
-----------------------------------------------
                                                 <spontaneous>
[7]      5.5    0.14    0.00                 std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int) [7]
-----------------------------------------------
                                                 <spontaneous>
[8]      5.1    0.13    0.00                 std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int) [8]
-----------------------------------------------
                0.11    0.00       6/6           cs1300bmp_readfile [5]
[9]      4.3    0.11    0.00       6         bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.8] [9]
                0.00    0.00      60/60          u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [461]
                0.00    0.00      42/102         u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [460]
-----------------------------------------------
                                                 <spontaneous>
[10]     4.1    0.11    0.00                 std::ostream::sentry::sentry(std::ostream&) [10]
-----------------------------------------------
                                                 <spontaneous>
[11]     3.5    0.09    0.00                 __gmon_start__ [11]
-----------------------------------------------
                                                 <spontaneous>
[12]     3.5    0.09    0.00                 __x86.get_pc_thunk.bx [12]
-----------------------------------------------
                                                 <spontaneous>
[13]     3.3    0.09    0.00                 std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int) [13]
-----------------------------------------------
                                                 <spontaneous>
[14]     2.7    0.07    0.00                 std::istream::sentry::sentry(std::istream&, bool) [14]
-----------------------------------------------
                                                 <spontaneous>
[15]     2.3    0.04    0.02                 cs1300bmp_writefile [15]
                0.02    0.00       6/6           bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [19]
-----------------------------------------------
                                                 <spontaneous>
[16]     1.2    0.03    0.00                 __stpcpy_ia32 [16]
-----------------------------------------------
                                                 <spontaneous>
[17]     1.0    0.03    0.00                 std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::xsgetn(wchar_t*, int) [17]
-----------------------------------------------
                                                 <spontaneous>
[18]     1.0    0.03    0.00                 std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int) [18]
-----------------------------------------------
                0.02    0.00       6/6           cs1300bmp_writefile [15]
[19]     0.8    0.02    0.00       6         bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [19]
                0.00    0.00      36/36          u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.11] [463]
                0.00    0.00      12/12          u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [464]
                0.00    0.00       6/6           bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long) [466]
-----------------------------------------------
                                                 <spontaneous>
[20]     0.4    0.01    0.00                 std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::xsputn(wchar_t const*, int) [20]
-----------------------------------------------
                                                 <spontaneous>
[21]     0.4    0.01    0.00                 std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setw) [21]
-----------------------------------------------
                                                 <spontaneous>
[22]     0.2    0.01    0.00                 std::istream::peek() [22]
-----------------------------------------------
                                                 <spontaneous>
[23]     0.2    0.01    0.00                 std::basic_ostream<char, std::char_traits<char> >::basic_ostream() [23]
-----------------------------------------------
                0.00    0.00       1/1           __libc_start_main [2864]
[24]     0.0    0.00    0.00       1         main [24]
-----------------------------------------------
                0.00    0.00      42/102         bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.8] [9]
                0.00    0.00      60/102         u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [461]
[460]    0.0    0.00    0.00     102         u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [460]
-----------------------------------------------
                0.00    0.00      60/60          bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.8] [9]
[461]    0.0    0.00    0.00      60         u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [461]
                0.00    0.00      60/102         u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [460]
-----------------------------------------------
                0.00    0.00      54/54          applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [1]
[462]    0.0    0.00    0.00      54         Filter::get(int, int) [462]
-----------------------------------------------
                0.00    0.00      36/36          bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [19]
[463]    0.0    0.00    0.00      36         u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.11] [463]
-----------------------------------------------
                0.00    0.00      12/12          bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [19]
[464]    0.0    0.00    0.00      12         u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [464]
-----------------------------------------------
                0.00    0.00       9/9           readFilter(std::string) [836]
[465]    0.0    0.00    0.00       9         Filter::set(int, int, int) [465]
-----------------------------------------------
                0.00    0.00       6/6           bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [19]
[466]    0.0    0.00    0.00       6         bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long) [466]
-----------------------------------------------
                0.00    0.00       6/6           applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [1]
[467]    0.0    0.00    0.00       6         Filter::getDivisor() [467]
-----------------------------------------------
                0.00    0.00       6/6           applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [1]
[468]    0.0    0.00    0.00       6         Filter::getSize() [468]
-----------------------------------------------
                0.00    0.00       1/1           __libc_csu_init [2849]
[469]    0.0    0.00    0.00       1         _GLOBAL__sub_I__Z16bmp_header1_readRSt14basic_ifstreamIcSt11char_traitsIcEEPtPmS4_S4_S5_ [469]
-----------------------------------------------
                0.00    0.00       1/1           __libc_csu_init [2849]
[470]    0.0    0.00    0.00       1         _GLOBAL__sub_I_main [470]
-----------------------------------------------
                0.00    0.00       1/1           readFilter(std::string) [836]
[471]    0.0    0.00    0.00       1         Filter::setDivisor(int) [471]
-----------------------------------------------
                0.00    0.00       1/1           readFilter(std::string) [836]
[472]    0.0    0.00    0.00       1         Filter::Filter(int) [472]
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

Copyright (C) 2012-2014 Free Software Foundation, Inc.

Copying and distribution of this file, with or without modification,
are permitted in any medium without royalty provided the copyright
notice and this notice are preserved.

Index by function name

 [469] _GLOBAL__sub_I__Z16bmp_header1_readRSt14basic_ifstreamIcSt11char_traitsIcEEPtPmS4_S4_S5_ [465] Filter::set(int, int, int) [8] std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int)
 [470] _GLOBAL__sub_I_main   [468] Filter::getSize()      [20] std::basic_streambuf<wchar_t, std::char_traits<wchar_t> >::xsputn(wchar_t const*, int)
   [1] applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [472] Filter::Filter(int) [2] std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int)
 [466] bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long) [22] std::istream::peek() [21] std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setw)
  [19] bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [4] std::istream::read(char*, int) [11] __gmon_start__
 [461] u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [14] std::istream::sentry::sentry(std::istream&, bool) [16] __stpcpy_ia32
 [464] u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [10] std::ostream::sentry::sentry(std::ostream&) [12] __x86.get_pc_thunk.bx
 [463] u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.11] [23] std::basic_ostream<char, std::char_traits<char> >::basic_ostream() [5] cs1300bmp_readfile
 [460] u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [13] std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int) [15] cs1300bmp_writefile
   [9] bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.8] [3] std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int) [24] main
 [467] Filter::getDivisor()   [17] std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::xsgetn(wchar_t*, int) [6] memcpy
 [471] Filter::setDivisor(int) [18] std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int)
 [462] Filter::get(int, int)   [7] std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int)
