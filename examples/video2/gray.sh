dir=$(pwd)
cd ../..
if python "./src/main.py" \
    --frame_first 0 \
    --frame_last 20 \
    --input "$dir/input/original/%d.png" \
    --bestfit "$dir/output/bestfit" \
    --output "$dir/output" \
    --config "$dir/config.json" \
    --initial "$dir/input/original/initial.csv"  \
    -ta 0 \
    -ts 1 \
    -te 0.000001 \
    --no_parallel --graySynthetic --global_optimization; then
    :
else
    die "Python quit unexpectedly!"
fi
