from hashlib import md5

def adventcoins(key,digits):
  num = 0
  while True:
    res = md5((key + str(num)).encode()).hexdigest()
    if res[:digits] == '0' * digits:
      return ["🎄", str(num), res]
    else:
      num += 1

[print(' '.join(adventcoins('ckczppom',i))) for i in [5,6]]
