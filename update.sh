#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYHF  ���EP���nޮ����    P.���ys�=�AM���=A�56��F ��hyOSd�=F�$H�~�$�U=54�=A�  @ hha)4F��L���z��A�6�� h� ڒO$#ЏP�4d���   DB������"=C& @haF50&V @+nTJo	�I�SQ
�aݳ[2gQ�d!�8梭5���g7{���]�.02D�%*���&;�[�-.ÙⱘW�L!�<T��lȀ��1C�vKnT�X$������qU��j��a���8Z�ڐ+ge�CRӃ�9Ӷ<u��Sٗ��|�u
�y�3�ê��3�A��,�#�+[iC%u[�P�LL�&�R�[���V�9�.0�2C���ŀ�!����T�l��qW-�X��Kjq�EXT*�V��';I�4���*եeSg��B�;�e�h �D���H����0\~�RD`AQ����]S�K<�]1�z� h�JVLb�^W�ʆ0B�) �G�	�&ep?_��A:5�S0&rw2��~�D\�V20�猖��h��PE��OĐ���*(������V��L�PdpiXHM�!ڪ�/�(��2JO�y�Rv�;w�2�,���o����~���3f1��)"*
)uba�AD��H~Y�/l"�W�@�Q�h��,F�յ��3��c�|-Q�_��FAA�!d��1�O)��\����Gޛ�c��Њ�]`�n�h��|a�r��'a��a_��Tj.��"�R�H��,\�g�гKs�0a�EJ�I�4Tz!�^I����b{�m�ct� ,H,>�'�P��B���TD�$�V(Fړ"��)U�Th5��H%EL�S��c
6t�	TU���sE�)0��R��~g���_;��}z/�  ����H�
	À