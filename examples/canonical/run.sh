cd ../..
if python "./src/main.py" \
    --frame_first 0 \
    --frame_last 30 \
    --input "./examples/canonical/input/gray/frame%03d.png" \
    --bestfit "./examples/canonical/output/bestfit" \
    --output "./examples/canonical/output" \
    --config "./examples/canonical/global_optimizer_config.json" \
    --initial "./examples/canonical/initial.csv"  \
    --no_parallel --graySynthetic --global_optimization; then
    :
else
    die "Python quit unexpectedly!"
fi