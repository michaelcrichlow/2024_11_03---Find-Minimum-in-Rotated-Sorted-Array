package test

import "core:fmt"
print :: fmt.println

main :: proc() {

	print(findMin([]int{3, 4, 5, 1, 2}))

}

findMin :: proc(nums: []int) -> int {
	// function here isn't strictly necessary, but
	// serves to highlight general overall structure/template
	hit :: proc(n: int, nums_0: int) -> bool {
		return n < nums_0
	}

	// guard case
	if nums[len(nums) - 1] > nums[0] {
		return nums[0]
	}

	// guard case
	if len(nums) == 1 {
		return nums[0]
	}

	// fundamental binary search
	first := 0
	last := len(nums) - 1
	mid := 0

	for first < last {
		mid = first + (last - first) / 2
		if hit(nums[mid], nums[0]) {
			last = mid
		}

		if !hit(nums[mid], nums[0]) {
			first = mid + 1
		}

	}

	return nums[first]
}
