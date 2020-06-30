module github.com/filecoin-project/sector-storage

go 1.13

require (
	github.com/detailyang/go-fallocate v0.0.0-20180908115635-432fa640bd2e
	github.com/elastic/go-sysinfo v1.3.0
	github.com/filecoin-project/filecoin-ffi v0.0.0-20200326153646-e899cc1dd072
	github.com/filecoin-project/go-bitfield v0.0.2-0.20200518150651-562fdb554b6e
	github.com/filecoin-project/go-fil-commcid v0.0.0-20200208005934-2b8bd03caca5
	github.com/filecoin-project/go-paramfetch v0.0.1
	github.com/filecoin-project/specs-actors v0.6.1
	github.com/filecoin-project/specs-storage v0.1.1-0.20200622113353-88a9704877ea
	github.com/google/uuid v1.1.1
	github.com/gorilla/mux v1.7.4
	github.com/hashicorp/go-multierror v1.0.0
	github.com/ipfs/go-cid v0.0.5
	github.com/ipfs/go-ipfs-files v0.0.7
	github.com/ipfs/go-log v1.0.3
	github.com/ipfs/go-log/v2 v2.0.3
	github.com/kr/text v0.2.0 // indirect
	github.com/mattn/go-isatty v0.0.9 // indirect
	github.com/mitchellh/go-homedir v1.1.0
	github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e // indirect
	github.com/prometheus/procfs v0.0.0-20190507164030-5867b95ac084 // indirect
	github.com/ricochet2200/go-disk-usage v0.0.0-20150921141558-f0d1b743428f
	github.com/smartystreets/goconvey v1.6.4 // indirect
	github.com/stretchr/testify v1.5.1
	go.opencensus.io v0.22.3
	go.uber.org/zap v1.15.0 // indirect
	golang.org/x/crypto v0.0.0-20200604202706-70a84ac30bf9 // indirect
	golang.org/x/lint v0.0.0-20191125180803-fdd1cda4f05f // indirect
	golang.org/x/sys v0.0.0-20200625212154-ddb9806d33ae // indirect
	golang.org/x/tools v0.0.0-20200502202811-ed308ab3e770 // indirect
	golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543
	gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f // indirect
	gopkg.in/yaml.v2 v2.2.8 // indirect
	honnef.co/go/tools v0.0.1-2020.1.3 // indirect
)

replace github.com/filecoin-project/filecoin-ffi => ./extern/filecoin-ffi
