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
BZh91AY&SY���  ���0 @}������~����P�P�P�I������`�44h!���C�M#C!�� �� ���FF��C��i�@#&@0�`9�ё����42h��ɐ �h!�M)�����5<�S�4��S�&bj6Rp7��%7n(���^;g�7�|�hN�k�� QI}���>������@?��5:T�A�ʬ��S��g�ˎ8����o6������د��A���Z��w�Y�+"`���J�䄩���=Cz�b��9��`��[�U�;\�6�5���n�0ly�B=�����D6��S)B�H!�3��T댦�҇����< �:x�^dK���qӖ��n�{���:�wH`$�Lҕ�Ď�	�0{�X��E��r픝~ӷ��upܰ�7�x��|P7��h'?83�<N��YbD.9�*.����mz�H�B��!-��m���<<��l�H_q0O����#zlM��x�X
�,��+8U~�y�\��)a�Xw؍5Dt�J��9K�`D�?P���;���k�B�+�R�Gy�9\���g�ЦܜW��p	B��1�w��T�UB�SS|>¸=n�e����,�q����h�xI�\�іqDx"<
���D�{�v1��0RѠ����fN��	G8i�ǙL8?@��H�YX5���ы*)���`e�=@ు��o�d�q���%�fp3���3$9�AI��T����<L`�205�/T��&*N; f�'�X'�P>�^��G��P=KE:T��]7E�͝8E� �)���G�<�#��N׭g���U��1FDl�H�f�H�_�*pR�>@B��>�&%lT��I��J�4����#[�����y�X�p��w$S�	 ثJP