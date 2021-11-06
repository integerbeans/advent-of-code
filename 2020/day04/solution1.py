f = open('input').read().strip().split('\n\n')
l = ['iyr','ecl','pid','eyr','hcl','byr','hgt']
r = 0

for e in f:
    if all(x in e for x in l):
        r += 1

print("🎄 =>", r)
