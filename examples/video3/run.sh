cd ../..
if python "./src/main.py" \
    --frame_first 0 \
    --frame_last 55 \
    --debug "./debug" \
    --input "./input_gray/frame%03d.png" \
    --output "./output" \
    --bestfit "./regression-tests/graysynthetic/bestfit" \
    --config "./global_optimizer_config.json" \
    --initial "./global_optimizer_initial.csv"  \
    --no_parallel --global_optimization --graySynthetic; then
    :
else
    die "Python quit unexpectedly!"
fi
