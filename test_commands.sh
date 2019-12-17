  conda env create --name 20191217_sgc --file envs/spacegraphcats.yaml
  conda activate 20191217_sgc

# Build the catlas. The input files are defined in sgc_conf/MS-all-SRF-5-20.00.yml
# This rule should take a lot of ram and a lot of time.
python -m spacegraphcats sgc_conf/MS-all-SRF-5-20.00.yml build --nolock

# Search the catlas
python -m spacegraphcats sgc_conf/MS-all-SRF-5-20.00.yml search --nolock

# Extract contigs and reads. I think these need to be run together
python -m spacegraphcats sgc_conf/MS-all-SRF-5-20.00.yml extract_contigs extract_reads --nolock
