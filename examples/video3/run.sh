cd ../..
if python "./src/main.py" \
    --frame_first 22 \
    --frame_last 100 \
    --input "./examples/video3/input/%d.jpg" \
    --bestfit "./examples/video3/output/bestfit" \
    --output "./examples/video3/output" \
    --config "./examples/video3/config.json" \
    --initial "./examples/video3/initial.csv"  \
    --continue_from 22 \
    --no_parallel --graySynthetic --global_optimization; then
    :
else
    die "Python quit unexpectedly!"
fi