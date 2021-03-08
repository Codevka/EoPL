for count in {3..31}
do
  touch 2.$count.rkt
  echo "#lang eopl" > 2.$count.rkt
done
