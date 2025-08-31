def two_sum(nums, target):
    lookup = {}
    # словарь для хранения уже просмотренных чисел
    for i, num in enumerate(nums):
        complement = target - num
        if complement in lookup:
            return [lookup[complement], i]
        lookup[num] = i
    return None
    # в случае, если пара не найдена
print(two_sum([2, 7, 11, 15], 9))
print(two_sum([3, 2, 4], 6))
