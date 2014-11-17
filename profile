Flat profile:

Each sample counts as 0.01 seconds.
  %   cumulative   self              self     total           
 time   seconds   seconds    calls  ms/call  ms/call  name    
 26.24      0.53     0.53                             memcpy
 16.34      0.86     0.33                             applyFilter(Filter*, cs1300bmp*, cs1300bmp*)
 12.62      1.12     0.26                             std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int)
  8.42      1.29     0.17                             std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int)
  6.93      1.43     0.14                             std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int)
  4.21      1.51     0.09                             std::istream::sentry::sentry(std::istream&, bool)
  3.47      1.58     0.07        6    11.67    11.67  bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3]
  3.22      1.65     0.07                             std::ostream::sentry::sentry(std::ostream&)
  2.97      1.71     0.06                             std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int)
  2.72      1.76     0.06                             std::istream::read(char*, int)
  1.98      1.80     0.04        6     6.67     6.67  bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*)
  1.73      1.84     0.04                             __gmon_start__
  1.73      1.87     0.04                             __x86.get_pc_thunk.bx
  1.49      1.90     0.03                             std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int)
  1.49      1.93     0.03                             cs1300bmp_writefile
  1.49      1.96     0.03                             std::basic_filebuf<char, std::char_traits<char> >::underflow()
  0.50      1.97     0.01                             std::codecvt<char, char, __mbstate_t>::do_encoding() const
  0.50      1.98     0.01                             std::codecvt<char, char, __mbstate_t>::do_always_noconv() const
  0.50      1.99     0.01                             std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int)
  0.50      2.00     0.01                             cs1300bmp_readfile
  0.25      2.01     0.01                             std::istream::peek()
  0.25      2.01     0.01                             std::basic_istream<char, std::char_traits<char> >::basic_istream()
  0.25      2.02     0.01                             std::basic_ostream<char, std::char_traits<char> >::basic_ostream()
  0.25      2.02     0.01                             std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setw)
  0.00      2.02     0.00      102     0.00     0.00  u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&)
  0.00      2.02     0.00       60     0.00     0.00  u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&)
  0.00      2.02     0.00       54     0.00     0.00  Filter::get(int, int)
  0.00      2.02     0.00       36     0.00     0.00  u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6]
  0.00      2.02     0.00       12     0.00     0.00  u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&)
  0.00      2.02     0.00        9     0.00     0.00  Filter::set(int, int, int)
  0.00      2.02     0.00        6     0.00     0.00  bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long)
  0.00      2.02     0.00        6     0.00     0.00  Filter::getDivisor()
  0.00      2.02     0.00        6     0.00     0.00  Filter::getSize()
  0.00      2.02     0.00        1     0.00     0.00  _GLOBAL__sub_I__Z16bmp_header1_readRSt14basic_ifstreamIcSt11char_traitsIcEEPtPmS4_S4_S5_
  0.00      2.02     0.00        1     0.00     0.00  _GLOBAL__sub_I_main
  0.00      2.02     0.00        1     0.00     0.00  Filter::setDivisor(int)
  0.00      2.02     0.00        1     0.00     0.00  Filter::Filter(int)
  0.00      2.02     0.00        1     0.00     0.00  main

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


granularity: each sample hit covers 2 byte(s) for 0.50% of 2.02 seconds

index % time    self  children    called     name
                                                 <spontaneous>
[1]     26.2    0.53    0.00                 memcpy [1]
-----------------------------------------------
                                                 <spontaneous>
[2]     16.3    0.33    0.00                 applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [2]
                0.00    0.00      54/54          Filter::get(int, int) [460]
                0.00    0.00       6/6           Filter::getSize() [466]
                0.00    0.00       6/6           Filter::getDivisor() [465]
-----------------------------------------------
                                                 <spontaneous>
[3]     12.6    0.26    0.00                 std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int) [3]
-----------------------------------------------
                                                 <spontaneous>
[4]      8.4    0.17    0.00                 std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int) [4]
-----------------------------------------------
                                                 <spontaneous>
[5]      6.9    0.14    0.00                 std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int) [5]
-----------------------------------------------
                                                 <spontaneous>
[6]      4.2    0.09    0.00                 std::istream::sentry::sentry(std::istream&, bool) [6]
-----------------------------------------------
                                                 <spontaneous>
[7]      4.0    0.01    0.07                 cs1300bmp_readfile [7]
                0.07    0.00       6/6           bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [9]
-----------------------------------------------
                                                 <spontaneous>
[8]      3.5    0.03    0.04                 cs1300bmp_writefile [8]
                0.04    0.00       6/6           bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [13]
-----------------------------------------------
                0.07    0.00       6/6           cs1300bmp_readfile [7]
[9]      3.5    0.07    0.00       6         bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [9]
                0.00    0.00      60/60          u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [459]
                0.00    0.00      42/102         u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [458]
-----------------------------------------------
                                                 <spontaneous>
[10]     3.2    0.07    0.00                 std::ostream::sentry::sentry(std::ostream&) [10]
-----------------------------------------------
                                                 <spontaneous>
[11]     3.0    0.06    0.00                 std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int) [11]
-----------------------------------------------
                                                 <spontaneous>
[12]     2.7    0.06    0.00                 std::istream::read(char*, int) [12]
-----------------------------------------------
                0.04    0.00       6/6           cs1300bmp_writefile [8]
[13]     2.0    0.04    0.00       6         bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [13]
                0.00    0.00      36/36          u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6] [461]
                0.00    0.00      12/12          u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [462]
                0.00    0.00       6/6           bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long) [464]
-----------------------------------------------
                                                 <spontaneous>
[14]     1.7    0.04    0.00                 __gmon_start__ [14]
-----------------------------------------------
                                                 <spontaneous>
[15]     1.7    0.04    0.00                 __x86.get_pc_thunk.bx [15]
-----------------------------------------------
                                                 <spontaneous>
[16]     1.5    0.03    0.00                 std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int) [16]
-----------------------------------------------
                                                 <spontaneous>
[17]     1.5    0.03    0.00                 std::basic_filebuf<char, std::char_traits<char> >::underflow() [17]
-----------------------------------------------
                                                 <spontaneous>
[18]     0.5    0.01    0.00                 std::codecvt<char, char, __mbstate_t>::do_encoding() const [18]
-----------------------------------------------
                                                 <spontaneous>
[19]     0.5    0.01    0.00                 std::codecvt<char, char, __mbstate_t>::do_always_noconv() const [19]
-----------------------------------------------
                                                 <spontaneous>
[20]     0.5    0.01    0.00                 std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int) [20]
-----------------------------------------------
                                                 <spontaneous>
[21]     0.2    0.01    0.00                 std::istream::peek() [21]
-----------------------------------------------
                                                 <spontaneous>
[22]     0.2    0.01    0.00                 std::basic_istream<char, std::char_traits<char> >::basic_istream() [22]
-----------------------------------------------
                                                 <spontaneous>
[23]     0.2    0.01    0.00                 std::basic_ostream<char, std::char_traits<char> >::basic_ostream() [23]
-----------------------------------------------
                                                 <spontaneous>
[24]     0.2    0.01    0.00                 std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setw) [24]
-----------------------------------------------
                0.00    0.00       1/1           __libc_start_main [2866]
[25]     0.0    0.00    0.00       1         main [25]
-----------------------------------------------
                0.00    0.00      42/102         bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [9]
                0.00    0.00      60/102         u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [459]
[458]    0.0    0.00    0.00     102         u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [458]
-----------------------------------------------
                0.00    0.00      60/60          bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [9]
[459]    0.0    0.00    0.00      60         u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [459]
                0.00    0.00      60/102         u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [458]
-----------------------------------------------
                0.00    0.00      54/54          applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [2]
[460]    0.0    0.00    0.00      54         Filter::get(int, int) [460]
-----------------------------------------------
                0.00    0.00      36/36          bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [13]
[461]    0.0    0.00    0.00      36         u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6] [461]
-----------------------------------------------
                0.00    0.00      12/12          bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [13]
[462]    0.0    0.00    0.00      12         u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [462]
-----------------------------------------------
                0.00    0.00       9/9           readFilter(std::string) [834]
[463]    0.0    0.00    0.00       9         Filter::set(int, int, int) [463]
-----------------------------------------------
                0.00    0.00       6/6           bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [13]
[464]    0.0    0.00    0.00       6         bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long) [464]
-----------------------------------------------
                0.00    0.00       6/6           applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [2]
[465]    0.0    0.00    0.00       6         Filter::getDivisor() [465]
-----------------------------------------------
                0.00    0.00       6/6           applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [2]
[466]    0.0    0.00    0.00       6         Filter::getSize() [466]
-----------------------------------------------
                0.00    0.00       1/1           __libc_csu_init [2851]
[467]    0.0    0.00    0.00       1         _GLOBAL__sub_I__Z16bmp_header1_readRSt14basic_ifstreamIcSt11char_traitsIcEEPtPmS4_S4_S5_ [467]
-----------------------------------------------
                0.00    0.00       1/1           __libc_csu_init [2851]
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

 [467] _GLOBAL__sub_I__Z16bmp_header1_readRSt14basic_ifstreamIcSt11char_traitsIcEEPtPmS4_S4_S5_ [463] Filter::set(int, int, int) [17] std::basic_filebuf<char, std::char_traits<char> >::underflow()
 [468] _GLOBAL__sub_I_main   [466] Filter::getSize()      [20] std::basic_filebuf<wchar_t, std::char_traits<wchar_t> >::pbackfail(unsigned int)
   [2] applyFilter(Filter*, cs1300bmp*, cs1300bmp*) [470] Filter::Filter(int) [16] std::basic_streambuf<char, std::char_traits<char> >::xsgetn(char*, int)
 [464] bmp_header1_write(std::basic_ofstream<char, std::char_traits<char> >&, unsigned short, unsigned long, unsigned short, unsigned short, unsigned long) [18] std::codecvt<char, char, __mbstate_t>::do_encoding() const [4] std::basic_streambuf<char, std::char_traits<char> >::xsputn(char const*, int)
  [13] bmp_24_write(char*, unsigned long, long, unsigned char*, unsigned char*, unsigned char*) [19] std::codecvt<char, char, __mbstate_t>::do_always_noconv() const [3] std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, int)
 [459] u_long_int_read(unsigned long*, std::basic_ifstream<char, std::char_traits<char> >&) [21] std::istream::peek() [24] std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::_Setw)
 [462] u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [12] std::istream::read(char*, int) [14] __gmon_start__
 [461] u_long_int_write(unsigned long, std::basic_ofstream<char, std::char_traits<char> >&) [clone .constprop.6] [6] std::istream::sentry::sentry(std::istream&, bool) [15] __x86.get_pc_thunk.bx
 [458] u_short_int_read(unsigned short*, std::basic_ifstream<char, std::char_traits<char> >&) [22] std::basic_istream<char, std::char_traits<char> >::basic_istream() [7] cs1300bmp_readfile
   [9] bmp_read(char*, unsigned long*, long*, unsigned char**, unsigned char**, unsigned char**) [clone .constprop.3] [10] std::ostream::sentry::sentry(std::ostream&) [8] cs1300bmp_writefile
 [465] Filter::getDivisor()   [23] std::basic_ostream<char, std::char_traits<char> >::basic_ostream() [25] main
 [469] Filter::setDivisor(int) [5] std::basic_filebuf<char, std::char_traits<char> >::xsgetn(char*, int) [1] memcpy
 [460] Filter::get(int, int)  [11] std::basic_filebuf<char, std::char_traits<char> >::xsputn(char const*, int)
