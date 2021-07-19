bam=$1
cwd="$(pwd)"
echo "cwd: $cwd"
BAM_WITH_SLASH="${cwd}/${bam}"
echo "BAM_WITH_SLASH: $BAM_WITH_SLASH"
BAM_WITH_DASH="${cwd}-${bam}"
echo "BAM_WITH_DASH: $BAM_WITH_DASH"