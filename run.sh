for f in ./scripts/*.sh; do
    echo "Processing $f file..."
    bash $f
done