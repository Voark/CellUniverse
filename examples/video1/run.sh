cd ../..
if python "./src/main.py" \
    --frame_first 0 \
    --frame_last 350 \
    --input "./examples/video1/input/%d.png" \
    --bestfit "./examples/video1/output/bestfit" \
    --output "./examples/video1/output" \
    --config "./examples/video1/config.json" \
    --initial "./examples/video1/initial.csv"  \
    --no_parallel --graySynthetic --global_optimization; then
    :
else
    die "Python quit unexpectedly!"
fi
