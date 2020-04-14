package ffiwrapper

import (
	"os"

	"github.com/filecoin-project/filecoin-ffi/generated"
)

var logFile *os.File

func init() {
	// get the go-log file via the GO_LOG_FILE env var
	logFilePath, exists := os.LookupEnv("GOLOG_FILE")
	if !exists {
		return
	}
	// open the file, and get a fd that way
	logFile, err := os.OpenFile(logFilePath, os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		log.Errorw("failed to open log file", "error", err.Error(), "GOLOG_FILE", logFilePaht)
	}
	// once a fd has been procured, pass it to generated.FilInitLogFd
	resp := generated.FilInitLogFd(int32(logFile.Fd()))
	resp.Deref()

	//TODO: figure out whether generated.FilDestoryInitLogFdResponse needs to be called
	defer generated.FilDestroyInitLogFdResponse(resp)
	//TODO: figure out how to close the file
}
