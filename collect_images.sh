
NUM=$1
PROJDIR=$2
DIR=$3

mkdir ~/743scripts/images/$PROJDIR
mkdir ~/743scripts/images/$PROJDIR/$DIR

python images/collect_images.py $NUM ~/743scripts/images/$PROJDIR/$DIR

