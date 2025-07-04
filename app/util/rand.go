package util

import (
	"fmt"
	"math/rand"
)

func GenerateID() string {
	hi := rand.Uint64()
	lo := rand.Uint32()
	return fmt.Sprintf("%x%x", hi, lo)
}
