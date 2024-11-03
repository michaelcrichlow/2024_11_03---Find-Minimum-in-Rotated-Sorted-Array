def findMin(nums: list[int]) -> int:

    def hit(n: int) -> bool:
        return n < nums[0]

    # guard case
    if nums[len(nums) - 1] > nums[0]:
        return nums[0]

    # guard case
    if len(nums) == 1:
        return nums[0]

    # fundamental binary search
    first = 0
    last = len(nums) - 1

    while first < last:
        mid = first + (last - first) // 2
        if hit(nums[mid]):
            last = mid

        if not hit(nums[mid]):
            first = mid+1

    return nums[first]


def main() -> None:
    print(findMin(nums=[2, 1]))


if __name__ == '__main__':
    main()
