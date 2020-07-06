package stores

import (
	"context"

	"github.com/filecoin-project/specs-actors/actors/abi"
	"github.com/ricochet2200/go-disk-usage/du"
)

type PathType bool

const (
	PathStorage = false
	PathSealing = true
)

type AcquireMode string

const (
	AcquireMove = "move"
	AcquireCopy = "copy"
)

type Store interface {
	AcquireSector(ctx context.Context, s abi.SectorID, spt abi.RegisteredSealProof, existing SectorFileType, allocate SectorFileType, sealing PathType, op AcquireMode) (paths SectorPaths, stores SectorPaths, err error)
	Remove(ctx context.Context, s abi.SectorID, types SectorFileType, force bool) error

	// like remove, but doesn't remove the primary sector copy, nor the last
	// non-primary copy if there no primary copies
	RemoveCopies(ctx context.Context, s abi.SectorID, types SectorFileType) error

	// move sectors into storage
	MoveStorage(ctx context.Context, s abi.SectorID, spt abi.RegisteredSealProof, types SectorFileType) error

	FsStat(ctx context.Context, id ID) (FsStat, error)
}

func Stat(path string) (FsStat, error) {
	di := du.NewDiskUsage(path)

	return FsStat{
		Capacity:  di.Size(),
		Available: di.Available(),
	}, nil
}

type FsStat struct {
	Capacity  uint64
	Available uint64 // Available to use for sector storage
	Used      uint64
}
