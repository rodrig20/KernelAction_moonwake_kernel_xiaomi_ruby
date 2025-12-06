echo "Add experimental version string"
version_string="${cat 'localversion-hypermoon'}-CI"
echo $version_string > localversion-00-experimental
echo "Add commit version string"
echo "-$(git rev-parse --short=7 HEAD)" > localversion-01-experimental
echo "Add run number string"
echo "-$RUN_NUMBER" > localversion-02-experimental
make O=out kernelrelease
echo "Done!"