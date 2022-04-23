echo '------'
echo '# -l adds newline after print'
echo '$ perl -le "print 10**2"'
perl -le "print 10**2"
echo
echo '------'
echo '# -a => splits input line on space and puts result in @F'
echo '# -n => gives while (<>) {  }'
echo '$ echo "a b c\\nd e f" | perl -alne "print @F"'
echo "a b c\nd e f" | perl -alne "print @F"
echo
echo '------'
echo '# -F => specify split pattern used by -a switch'
echo '$ echo "a:b:c\\nd:e:f" | perl -aF: -lne "print @F"'
echo "a:b:c\nd:e:f" | perl -aF: -lne "print @F"
echo
