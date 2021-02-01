if python "./main.py" \
    --frame_first 0 \
    --frame_last 350 \
    --input "./1/%d.png" \
    --bestfit "./1/nothing" \
    --output "./1/output" \
	--residual "./residual" \
    --config "./global_optimizer_config_r1.json" \
    --initial "./1/cells.0.csv"  \
    --no_parallel --graySynthetic --global_optimization; then
    :
else
    die "Python quit unexpectedly!"
fi
